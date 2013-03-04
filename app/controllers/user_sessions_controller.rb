class UserSessionsController < ApplicationController
 layout 'sessions'


def manager_account_settings

    respond_to do |format|
      format.html # index.html.erb
    end

end
   
def index


    respond_to do |format|
      format.html # index.html.erb
    end

end


def create_new 


        
if params[:role].eql?"manager"
	@user = Manager.new(params[:user])
	@user.active = true
	if @user.save
	@user_session =  UserSession.create!(@user)
	redirect_to "/new/" + @user.id.to_s
	else
	redirect_to "/register?exist=true"
	end

elsif params[:role].eql?"salesperson"
	@user = SalesPerson.new(params[:user])
	@user.active = true	
        if @user.save
        @user_session =  UserSession.create!(@user)
        redirect_to "/goals/" + @user.id.to_s
        else
        redirect_to "/register?exist=true"
	end
end


end
   
def new




    respond_to do |format|
      format.html # index.html.erb
    end

end



def destroy
  puts 'destroying usersession'
  @user_session = UserSession.find
  if @user_session
    @user_session.destroy
  end

#                respond_to do |format|
#                        format.html { }
#                end
                redirect_to :controller => 'user_sessions', :action => 'new', :success=>"false"

end


end
