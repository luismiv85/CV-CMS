class Admin::ReferencesController < Admin::BaseController
  
	before_action :set_admin_reference, only: [:update]

  def edit
  	@reference = Admin::Reference.first || Admin::Reference.create
  end

  def update
  	respond_to do |format|
      if @reference.update(admin_reference_params)
        format.html { redirect_to admin_root_path, notice: 'Las referencias fueron actualizadas correctamente.' }
        format.json { render :show, status: :ok, location: @reference }
      else
        format.html { render :edit }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin_reference
    @reference = Admin::Reference.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_reference_params
    params.require(:admin_reference).permit(:title, :subtitle, projects_attributes: [:id, :image, :name, :url])
  end
end
