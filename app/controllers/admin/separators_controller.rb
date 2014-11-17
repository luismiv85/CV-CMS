class Admin::SeparatorsController < Admin::BaseController
  
	  before_action :set_admin_separator, only: [:update]

  def edit
  	@separator1 = Admin::Separator.first || Admin::Separator.create
  	@separator2 = Admin::Separator.second || Admin::Separator.create
  end

  def update
    respond_to do |format|
      if @separator.update(admin_separator_params)
        format.html { redirect_to admin_separators_edit_path, notice: 'Header was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_header }
      else
        format.html { render :edit }
        format.json { render json: @separator.errors, status: :unprocessable_entity }
      end
    end
  end



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin_separator
    @separator = Admin::Separator.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_separator_params
    params.require(:admin_separator).permit(:text, :author)
  end
end
