class ApplicationController < ActionController::Base


#  def forem_user
#    current_user
#  end
#  helper_method :forem_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Authentication
  include Redirects

  private
  def after_login_path
    # TODO: decide where to reditrect after login
    root_path
  end

end
