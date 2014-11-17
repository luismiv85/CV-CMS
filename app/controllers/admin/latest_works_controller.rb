class Admin::LatestWorksController < Admin::BaseController
  
	before_action :set_admin_latest_work, only: [:update]

  def edit
  	@latest_work = Admin::LatestWork.first || Admin::LatestWork.create 
  end


  def update
    respond_to do |format|
      if @latest_work.update(admin_latest_work_params)
        format.html { redirect_to admin_root_path, notice: 'Header was successfully updated.' }
        format.json { render :show, status: :ok, location: @latest_work }
      else
        format.html { render :edit }
        format.json { render json: @latest_work.errors, status: :unprocessable_entity }
      end
    end
  end



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin_latest_work
    @latest_work = Admin::LatestWork.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_latest_work_params
    params.require(:admin_latest_work).permit(:image1, :image2, :image3, :link,:title, :subtitle, latest_work_boxes_attributes: [:id, :title, :icon, :text, :_destroy])
  end
end
