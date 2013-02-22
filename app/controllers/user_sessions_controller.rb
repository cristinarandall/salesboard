class UserSessionsController < ActionController::Base
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
@user = User.new(params[:user])

if @user.save
redirect_to "/new/" + @user.id.to_s
else
redirect_to "/register?exist=true"
end

end
   
def new

#@user = User.create(params[:user])



#    redirect_to "/new/" + @user.id.to_s
    respond_to do |format|
      format.html # index.html.erb
    end

end


end
