class UsersController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    twitter_id = auth_hash['uid']
    nickname = auth_hash['extra']['access_token'].params['screen_name']
    access_token = auth_hash['credentials']['token']

    user = User.find_or_create_by(uid: twitter_id)
    user.update(access_token: access_token, nickname: nickname)

    session[:user_id] = user.id

    redirect_to '/dashboard'
  end

  def show
    if session[:user_id].nil?
      session[:user_id] = User.all.first[:id]
    end
    @user = User.find(session[:user_id])
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

end
