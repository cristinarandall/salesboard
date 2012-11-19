class AdminsController < ActionController::Base
 layout 'admin'

   
def index


    respond_to do |format|
      format.html # index.html.erb
    end

end


end
