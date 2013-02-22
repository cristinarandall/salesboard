# -*- encoding : utf-8 -*-
class Topic < ActiveRecord::Base

  attr_accessible :name

  belongs_to :user
  has_many :goals

end
