class UsersController < ActionController::Base
 layout 'admin'

  def auth_callback
        @origin = request.env['omniauth.origin']
    logger.info "\n--------------\n#{@origin}\n-------------\n"

      if current_user
        logger.info "\n--------------\n check to see if the current user should be logged in:\n-------------\n"
        @current_user = User.find(current_user)
      end

    omniauth = request.env["omniauth.auth"]
    session[:omniauth] = omniauth.except('extra') if omniauth

  if omniauth
      authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
  else
    logger.info "\n--------------\n omniauth empty ----------"
  end


  if authentication
    logger.info "\n--------------\n sign up user ----------"
  else

        @user = User.new(:email=>omniauth["user_info"]["email"])
        @user.save
        @user.authentications.create!(:provider => omniauth['provider'], :token => omniauth['credentials']['token'], :secret =>omniauth['credentials']['secret'], :uid => omniauth['uid'])
  end

    respond_to do |format|
      format.html # index.html.erb
    end

end


def index

    respond_to do |format|
      format.html # index.html.erb
    end

end

   
def index


    respond_to do |format|
      format.html # index.html.erb
    end

end

   
def new

    respond_to do |format|
      format.html # index.html.erb
    end

end


end
