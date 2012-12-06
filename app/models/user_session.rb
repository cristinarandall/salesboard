# -*- encoding : utf-8 -*-
class UserSession < ActiveRecord::Base #Authlogic::Session::Base
  find_by_login_method :find_by_login_or_email
end


