class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to root_path, success: t('.succcess')
    else
      flash.now[:danger] = t('.failed')
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_back_or_to root_path, success: t('.succcess')
  end
end
