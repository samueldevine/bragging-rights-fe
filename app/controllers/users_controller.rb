class UsersController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    twitter_id = auth_hash['uid']
    nickname = auth_hash['extra']['access_token'].params['screen_name']
    access_token = auth_hash['credentials']['token']
    user = User.find_or_create_by(uid: twitter_id)
    user.update(access_token: access_token, nickname: nickname, uid: twitter_id)

    session[:user_id] = user.uid

    redirect_to '/dashboard'
  end

  def show
    if session[:user_id].nil?
      redirect_to root_path
      flash[:alert] = 'You must be logged in to get your brag on!'
    end
    @user = User.find_by(uid: session[:user_id])
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

end
