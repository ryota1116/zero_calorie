class OauthsController < ApplicationController
  skip_before_action :require_login, raise: false

  def oauth
    login_at(params[:provider])
  end

  def callback
    provider = params[:provider]

    # if auth_params[:denied].present?
    #   redirect_to root_path, notice: 'ログインをキャンセルしました'
    #   return
    # end

    if @user = login_from(provider)
      redirect_to root_path, success: "#{provider.titleize}でログインしました"
    else
      begin
        @user = create_from(provider)
        # NOTE: this is the place to add '@user.activate!' if you are using user_activation submodule

        reset_session # protect from session fixation attack
        auto_login(@user)
        redirect_to root_path, success: "#{provider.titleize}でログインしました"
      rescue StandardError
        redirect_to root_path, danger: "#{provider.titleize}でのログインに失敗しました"
      end
    end
  end

  # private

  # def auth_params
  #   params.permit(:code, :provider, :denied)
  # end
end
