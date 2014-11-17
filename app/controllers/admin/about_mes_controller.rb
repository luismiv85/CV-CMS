class Admin::AboutMesController < Admin::BaseController
	before_action :set_admin_about, only: [:update]
  
  def edit
    @about = Admin::AboutMe.first || Admin::AboutMe.create
  end

  def update
    respond_to do |format|
      if @about.update(admin_about_params)
        format.html { redirect_to admin_root_path, notice: 'La seccion SOBRE MÍ fue actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @admin_about_me }
      else
        format.html { render :edit }
        format.json { render json: @admin_about_me.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_about
      @about = Admin::AboutMe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_about_params
      params.require(:admin_about_me).permit(:title, :text, :title_what_i_do, :sub_title_what_i_do, 
      	events_attributes: [:id, :year, :event, :_destroy], skills_attributes: [:id, :percent, :skill, :_destroy],
      	boxes_attributes: [:id, :title, :text, :_destroy, :image])
    end

end
