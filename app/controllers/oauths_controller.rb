class OauthsController < ApplicationController
  skip_before_action :require_login, raise: false

  def oauth
    login_at(params[:provider])
  end

  def callback
    provider = auth_params[:provider]

    # 認証前のキャンセル後にリダイレクト処理を行う
    if auth_params[:denied].present?
      redirect_to root_path, notice: 'ログインをキャンセルしました'
      return
    end

    create_user_from(provider) unless (@user = login_from(provider))
    redirect_back_or_to meal_records_path, success: "#{provider.titleize}でログインしました"
  end

  private

  def auth_params
    params.permit(:code, :provider, :denied)
  end

  def create_user_from(provider)
    @user = create_from(provider)
    # NOTE: this is the place to add '@user.activate!' if you are using user_activation submodule

    reset_session # protect from session fixation attack
    auto_login(@user)
  rescue StandardError
    redirect_to root_path, alert: "#{provider.titleize}でのログインに失敗しました"
  end
end
