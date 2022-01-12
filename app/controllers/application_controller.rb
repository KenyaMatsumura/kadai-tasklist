class ApplicationController < ActionController::Base
  include SessionsHelper #logged_in? 使用のため継承
  include Pagy::Backend
  
  private
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
