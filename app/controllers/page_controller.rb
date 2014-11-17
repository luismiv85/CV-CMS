class PageController < ApplicationController
  def index
  	@header = Admin::Header.first || Admin::Header.new
  	@about = Admin::AboutMe.first || Admin::AboutMe.new
  	@separator1 = Admin::Separator.first || Admin::Separator.new
  	@separator2 = Admin::Separator.second || Admin::Separator.new
  	@last_work = Admin::LatestWork.first || Admin::LatestWork.new
  	@references = Admin::Reference.first || Admin::Reference.new
  	@contacts = Admin::Contact.first || Admin::Contact.new
  	@contact = ContactUs::Contact.new
  end
end
