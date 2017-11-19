class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.first_name = auth['info']['name'].split(" ")[0]
      u.last_name = auth['info']['name'].split(" ")[1]
      u.email = auth['info']['email']
      u.profile_image = auth['info']['image']
    end

    session[:user_id] = @user.id

    render 'welcome/home'
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
