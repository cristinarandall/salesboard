# -*- encoding : utf-8 -*-
class Goal < ActiveRecord::Base

  belongs_to :topic
  belongs_to :user

end
