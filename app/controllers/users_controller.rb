class UsersController < ApplicationController
 layout 'admin'


def salesforce_callback




      if current_user
        logger.info "\n--------------\n check to see if the current user should be logged in:\n-------------\n"
        @current_user = User.find(current_user)
      end

    omniauth = request.env["omniauth.auth"]
    session[:omniauth] = omniauth.except('extra') if omniauth


    logger.info "\n--------------checking omniauth-------------\n"
  if omniauth
      authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    logger.info "\n--------------\n#{omniauth}\n-------------\n"
  else
    logger.info "\n--------------\n omniauth empty ----------"
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
    logger.info "\n--------------\n already signed in ----------"

   elsif omniauth

    logger.info "\n--------------\n new user ----------"



    logger.info "\n--------------\n#{omniauth["provider"]}\n-------------\n"


    logger.info "\n--------------\n printed provider ----------"
		if omniauth["user_info"] && omniauth["user_info"]["email"]

                @email =  omniauth["user_info"]["email"]
		@user = User.create(:email=>@email, :active=>true)


        	@user.authentications.create!(:token => omniauth['credentials']['token'], :secret => omniauth['credentials']['secret'],:provider => omniauth['provider'], :uid => omniauth['uid'])


		elsif omniauth["email"]

    logger.info "\n--------------\n#{omniauth["email"]}\n-------------\n"
		else
    logger.info "\n--------------\n printing name ----------"
    logger.info "\n--------------\n#{omniauth["name"]}\n-------------\n"

                    logger.info "\n--------------\n no email ----------"
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
