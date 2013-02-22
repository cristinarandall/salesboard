# -*- encoding : utf-8 -*-
class Topic < ActiveRecord::Base


  belongs_to :user
  has_many :goals

end
