class Admin::ContactsController < Admin::BaseController
  
	before_action :set_admin_contact, only: [:update]

  def edit
  	@contact = Admin::Contact.first || Admin::Contact.create
  end

  def update

  	respond_to do |format|
      if @contact.update(admin_contact_params)
        format.html { redirect_to admin_root_path, notice: 'Contacto fue actualizado.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  
  end

    private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin_contact
    @contact = Admin::Contact.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_contact_params
    params.require(:admin_contact).permit(:title, :address, :address2, :name, :tlf)
  end
end
