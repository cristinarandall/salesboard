# -*- encoding : utf-8 -*-
class Authentication < ActiveRecord::Base

  attr_accessible :provider, :uid, :secret, :token, :user_id



#  acts_as_authentic do |config|
    #disable_perishable_token_maintenance(true)
#    config.login_field = 'email'
#    config.validate_password_field = false
#  end









end
