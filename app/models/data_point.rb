# -*- encoding : utf-8 -*-
class DataPoint
    include MongoMapper::Document
#  include Mongoid::Document
#  include Mongoid::Timestamps
  plugin MongoMapper::Plugins::Timestamps

#    field :user_id, type: Integer
#    field :topic_id, type: Integer
    key :user_id, Integer
    key :topic_id, Integer


    key :quantity, Integer
    timestamps!


 #   field :quantity, type: Integer
  #  field :created_at, type: DateTime


end


