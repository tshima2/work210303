class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate_user
    # 現在ログイン中のユーザが存在しない場合、ログインページにリダイレクトさせる。
    current_user
    if @current_user == nil
      flash[:notice] = t('notice.login_needed')
      redirect_to new_sessions_path
    end
  end

  
end
