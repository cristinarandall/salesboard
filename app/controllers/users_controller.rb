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




		if omniauth["info"]
                @email =  omniauth["info"]["email"]
		@user = User.create(:email=>@email, :active=>true, :name=>omniauth["info"]["name"])
    logger.info "\n-------------- credentials start-------------\n"

#    logger.info "\n--------------\n#{omniauth["credentials"]}\n-------------\n"
    logger.info "\n--------------\n#{omniauth["credentials"]["instance_url"]}\n-------------\n"
    logger.info "\n-------------- credentials end-------------\n"
        	

Authentication.create(:user_id=>@user.id, :token => omniauth['credentials']['token'], :secret => omniauth['credentials']['secret'], :provider => omniauth['provider'], :uid => omniauth['uid'], :instance_url=> omniauth["credentials"]["instance_url"])	
	@user.photo_url = omniauth['extra']['photos']['picture']
	@user.save

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

if params[:user_id]
@user = User.find(params[:user_id])
end
    respond_to do |format|
      format.html # index.html.erb
    end

end


def delete


if params[:location_bool]

@current_user = params[:current_user_id]
OfficeLocation.delete(params[:office_id])
redirect_to "/settings/" + @current_user + "?delete_location=success"

else

@current_user = params[:current_user_id]
User.delete(params[:user_id])
redirect_to "/settings/" + @current_user + "?delete=success"
end

end




def add_salesperson


if params[:user_id]
@user = User.find(params[:user_id])

@salesperson = SalesPerson.create(params[:user])
@salesperson.manager_id = params[:user_id]
@salesperson.save
redirect_to "/settings/" + @user.id.to_s + "?add=success"
end 

end

def add_location

if params[:user_id]
@user = User.find(params[:user_id])



@location = OfficeLocation.create(:location=>params[:location], :name=>params[:name]) #:manager_id=>@user.id, :name=>params[:name], :location=>params[:location])
@location.manager_id = @user.id
@location.save

redirect_to "/settings/" + @user.id.to_s + "?location=success"
end 

end


def delete_location

if params[:current_user_id]
@user = User.find(params[:current_user_id_id])



@location = OfficeLocation.delete(params[:office_id]) 
@location.manager_id = @user.id
@location.save

redirect_to "/settings/" + @user.id.to_s + "?location_delete=success"
end

end



def manager_account_settings

if params[:user_id]

@salespeople = SalesPerson.find_all_by_manager_id(params[:user_id])
@locations = OfficeLocation.find_all_by_manager_id(params[:user_id])
end

    respond_to do |format|
      format.html # index.html.erb
    end

end


end
