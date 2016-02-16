class AdminController < ApplicationController
  
  before_action :authenticate, :except => [:index, :show]
  
  helper_method :logged_in?
  helper_method :current_user
  
  def logged_in?
    session[:logged_in]
  end
  
  private
  
    def authenticate
      if user = authenticate_with_http_basic {|user, password| User.authenticate(user, password)}
        session[:user] = user.id
        session[logged_in] = true
      else
        request_http_basic_authentication
      end
    end
    
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
end
