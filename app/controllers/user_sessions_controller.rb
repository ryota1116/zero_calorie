class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create guest_login]

  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to meal_records_path, success: t('.success')
    else
      flash.now[:danger] = t('.failed')
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_back_or_to root_path, success: t('.success')
  end

  def guest_login
    user = User.find_by!(role: :guest)
    auto_login(user)
    redirect_back_or_to meal_records_path, success: t('.success')
  end
end
