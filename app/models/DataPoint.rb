# -*- encoding : utf-8 -*-
class DataPoint
    include MongoMapper::Document

    key :user_id, Integer
    key :goal_id, Integer
    key :count, Integer

    timestamps!


end


