class Admin::HeadersController < Admin::BaseController
  before_action :set_admin_header, only: [:update]

  # GET /admin/headers/1/edit
  def edit
    @admin_header = Admin::Header.first || Admin::Header.create
  end

  # PATCH/PUT /admin/headers/1
  # PATCH/PUT /admin/headers/1.json
  def update
    respond_to do |format|
      if @admin_header.update(admin_header_params)
        format.html { redirect_to admin_root_path, notice: 'Header was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_header }
      else
        format.html { render :edit }
        format.json { render json: @admin_header.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_header
      @admin_header = Admin::Header.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_header_params
      params.require(:admin_header).permit(:avatar, :name, :facebook, :twitter, :linkedin, :google, skills_attributes: [:id, :skill, :icon, :_destroy])
    end
end
