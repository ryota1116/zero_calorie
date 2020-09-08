class ApplicationController < ActionController::Base
  rescue_from StandardError, with: :render_500
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  add_flash_types :success, :info, :warning, :danger
  before_action :require_login

  def render_404
    render file: Rails.root.join('public/404.html').to_s, status: :not_found, layout: false, content_type: 'text/html'
  end

  def render_500(error)
    logger.error("エラークラス: #{error.class}")
    logger.error("エラーメッセージ : #{error.message}")
    logger.error('バックトレース -------------')
    logger.error(error.backtrace.("\n"))
    logger.error('-------------')
    render file: Rails.root.join('public/500.html').to_s, status: :internal_server_error, layout: false, content_type: 'text/html'
  end

  private

  def not_authenticated
    redirect_to login_path, alert: 'Please login first'
  end
end
