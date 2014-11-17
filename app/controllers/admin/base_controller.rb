class Admin::BaseController < ApplicationController
  before_filter :require_http_basic_auth, :set_section 
  
  #   before_filter :set_search

  # def set_search
  #   @search=App.search(params[:q])
  # end
  layout 'admin'
  

  protected
  
  def set_section
    @section = 'admin'
  end
  
  def require_http_basic_auth
    # return true if Rails.env == 'development'
    authenticate_or_request_with_http_basic do |login, password|
      login == 'admin' && password == 'luismi'
    end
  end
end
