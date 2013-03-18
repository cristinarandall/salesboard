class AdminsController < ApplicationController

 layout 'admin'


def add_new_goal

if params[:user_id]

@user_id = params[:user_id]

@topic_name = params[:topic]

@topic = Topic.find(:all, :conditions=>['name = ?', @topic_name])

if @topic.nil?
@topic = Topic.create(:name=> params[:topic])
end

puts "===================="
puts params[:values][1]
puts "/===================="

if params[:values][0] && params[:names][0]
Goal.create(:period=>params[:period], :quantity=>params[:values][0], :name=>params[:names][0], :user_id=> @user_id, :topic_id=> @topic.id)
end

if params[:values][1] && params[:names][1]
Goal.create(:quantity=>params[:values][0],:period=>params[:period], :name=>params[:names][0], :user_id=> @user_id, :topic_id=> @topic.id)
end

if params[:values][2] && params[:names][2]
Goal.create(:quantity=>params[:values][0], :name=>params[:names][0], :period=>params[:period],:user_id=> @user_id, :topic_id=> @topic.id)
end

if params[:values][3] && params[:names][3]
Goal.create(:quantity=>params[:values][0], :name=>params[:names][0], :user_id=> @user_id, :period=>params[:period], :topic_id=> @topic.id)
end




end

    if params[:user_id]
    redirect_to "/goals/" + @user_id + "?save=true"
    else
    redirect_to "/goals"
    end
#    respond_to do |format|
#      format.html # index.html.erb
#    end

end



   
def index


@prospecting = Topic.find(:first, :conditions=>['name = ?', "Prospecting"])
if @prospecting
@goals_proposals = Goal.find_all_by_topic_id(@prospecting.id)
end

@calling = Topic.find(:first, :conditions=>['name = ?', "Calling"])
if @calling
@goals_calling = Goal.find_all_by_topic_id(@calling.id)
end

@emailing = Topic.find(:first, :conditions=>['name = ?', "Emailing"])
if @emailing
@goals_emailing = Goal.find_all_by_topic_id(@emailing.id)
end

puts @goals_emailing.count.to_s


@proposals = Topic.find(:first, :conditions=>['name = ?', "Proposals"])
if @proposals
@goals_proposals = Goal.find_all_by_topic_id(@proposals.id)
end

@deals = Topic.find(:first, :conditions=>['name = ?', "Deals"])
if @deals 
@goals_deals = Goal.find_all_by_topic_id(@deals.id)
end

@meetings = Topic.find(:first, :conditions=>['name = ?', "Meetings"])
if @meetings
@goals_meetings = Goal.find_all_by_topic_id(@meetings.id)
end

    respond_to do |format|
      format.html # index.html.erb
    end

end


def add_metric

if current_user
DataPoint.create(:user_id=>current_user.id, :topic_id=>params[:topic_id], :quantity=>params[:quantity])
else
DataPoint.create(:topic_id=>params[:topic_id], :quantity=>params[:quantity])
end


    @return_hash = []

    respond_to do |format|
        format.js { render :js => @return_hash.to_json }
    end


end



end
