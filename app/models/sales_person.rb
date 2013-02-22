# -*- encoding : utf-8 -*-
class SalesPerson < User

  attr_accessible :email, :name, :photo_url, :lastname, :firstname, :password

  belongs_to :manager

end
