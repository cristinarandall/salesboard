# -*- encoding : utf-8 -*-
class DataPoint
    include MongoMapper::Document

    key :user_id, Integer
    key :topic_id, Integer

    key :quantity, Integer

    timestamps!


end


