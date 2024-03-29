# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base

  attr_accessible :email, :name, :photo_url, :lastname, :firstname, :password

  has_many :goals
  has_many :authentications
  acts_as_authentic do |config|
    disable_perishable_token_maintenance(true)
    config.login_field = 'email'
    config.validate_password_field = false
  end


  def self.find_by_login_or_email(login)
    User.find_by_email(login)
  end


  def activate!
    self.active = true
    save
  end


def get_calls


@key = "3MVG9y6x0357Hlef6GCKmow8zOl8h5otKPc2BYHrUhETUs43QhnXiAsCaeeIiH22Y0PaQ3N.q9Nu28Tr0k_zW"
@secret = "1136101935488826437"


end


end
