class SessionsController < ApplicationController
  def new
    user=User.new
  end

  def create
    user=User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #ログイン成功した場合
      session[:user_id] = user.id
      flash[:success] = 'ログインしました'
      #redirect_to user_path(user.id)
      redirect_to blogs_path
    else
      flash[:danger]='ログインに失敗しました'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = 'ログアウトしました'
    redirect_to new_sessions_path
  end
end
