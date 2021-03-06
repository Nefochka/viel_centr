class UsersController < ApplicationController
  skip_before_action :require_user

  before_filter :require_no_user, :only => [:new, :create]
  
  layout 'login'

  def new
    @user = User.new
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Пользователь удален."
    redirect_to admin_users_path
  end

  def create
   # TODO: make sure nickname & email are not yet used, otherwise raise exception
   @user = User.new(user_params)
    if @user.save
      UsersMailer.registered(@user).deliver
      UsersMailer.ordered_to_admin(@user).deliver
    else
      render :action => :new
      return
    end
    redirect_to root_path
   rescue Exception => ex
    flash[:notice] = ex.message
    render :action => :new
    
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :first_name, :last_name, :email, :password, :password_confirmation)
  end

end
