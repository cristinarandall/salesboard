class UsersController < ApplicationController
 layout 'admin'


def salesforce_callback




      if current_user
        @current_user = User.find(current_user)
      end

    omniauth = request.env["omniauth.auth"]
    session[:omniauth] = omniauth.except('extra') if omniauth


  if omniauth
      authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
  else
  end



  if (authentication) && (@current_user.nil?)
        @user = authentication.user
    @user = User.find(authentication.user.id)

        if @user.active && @user_session.save
                @user_session =  UserSession.create!(@user)
                current_user = UserSession.find
                Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(self)


                       flash[:notice] = "Signed in successfully."
	end 

   elseif (authentication) && (authentication.user_id)

    @current_user = User.find(authentication.user_id)
    logger.info "\n-------------- sign in-------------\n"
      @user_session =  UserSession.create!(@current_user)
   elsif omniauth



    logger.info "\n--------------\n#{omniauth["uid"]}\n-------------\n"
    logger.info "\n--------------\n#{omniauth["provider"]}\n-------------\n"
    logger.info "\n--------------\n#{omniauth["info"]["name"]}\n-------------\n"

		if omniauth["info"]
                @email =  omniauth["info"]["email"]
		@user = User.create(:email=>@email, :active=>true, :name=>omniauth["info"]["name"])

        	Authentication.create(:user_id=>@user.id, :token => omniauth['credentials']['token'], :secret => omniauth['credentials']['secret'], :provider => omniauth['provider'], :uid => omniauth['uid'])
		elsif omniauth["email"]

		else

		end


   end


end



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
