module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :require_user

    helper_method :current_user_session
    helper_method :current_user
  end

  def current_user_session
    @current_user_session ||= UserSession.find
  end
  private :current_user_session

  def current_user
    @current_user ||= current_user_session && current_user_session.record
  end
  private :current_user

  def require_user
    unless current_user
      remember_back_location
      redirect_to login_url
      false
    end
  end
  private :require_user

  def require_no_user
    if current_user
      redirect_to root_url
      false
    end
  end
  private :require_no_user

  def require_admin
    unless current_user && current_user.admin?
      redirect_to root_path
    end
  end
  private :require_admin

end
