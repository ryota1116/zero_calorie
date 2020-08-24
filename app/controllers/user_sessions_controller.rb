class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path, success: t('.succcessfully_logged_in')
    else
      flash.now[:danger] = t('.login_failed')
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_back_or_to root_path
  end
end
