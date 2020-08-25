class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to login_path, success: t('.success') }
        format.json { render :show, status: :created, location: @user }
      else
        flash.now[:danger] = t('.failed')
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
