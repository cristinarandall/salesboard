# -*- encoding : utf-8 -*-
class Goal < ActiveRecord::Base

  attr_accessible :quantity, :name, :user_id, :topic_id

  belongs_to :topic
  belongs_to :user

end
