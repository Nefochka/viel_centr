class UserSessionsController < ApplicationController

  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  layout 'login'

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(user_session_params)

    if @user_session.save
      redirect_back_or_default after_login_path
    else
      flash[:notice] = 'Email or password incorrect'
      render :action => :new
    end

    rescue Exception => ex
    flash[:notice] = ex.message
    render :action => :new

  end

  def destroy
    current_user_session.destroy
    redirect_back_or_default root_path
  end

  private
  def user_session_params
    params.require(:user_session).permit(:email, :password)
  end

end



