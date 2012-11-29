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

   
def new

    respond_to do |format|
      format.html # index.html.erb
    end

end


end
