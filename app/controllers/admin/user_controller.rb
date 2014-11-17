class Admin::UserController < Admin::BaseController
  
  def index
  	@header = Admin::Header.first || Admin::Header.create
  	@about = Admin::AboutMe.first || Admin::AboutMe.create

  end
end
