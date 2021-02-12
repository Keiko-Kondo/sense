class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  # before_action :authenticate_user

  def authenticate_user
    # 現在ログイン中のユーザが存在しない場合、ログインページにリダイレクトさせる。
    if @current_user == nil
      flash[:notice] = t('notice.login_needed')
      redirect_to new_session_path
    end
  end

  # def authenticate_user
  #   if current_user == nil
  #     flash[:notice] = 'ログインしてください'
  #     redirect_to new_session_path
  #   end
  # end


end
