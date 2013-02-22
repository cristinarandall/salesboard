class AdminsController < ActionController::Base
 layout 'admin'

def add_new_goal

if params[:user_id]

@user_id = params[:user_id]


@topic = Topic.create(:name=> params[:topic])
puts "===================="
puts params[:values][1]
puts "/===================="

if params[:values][0] && params[:names][0]
Goal.create(:quantity=>params[:values][0], :name=>params[:names][0], :user_id=> @user_id, :topic_id=> @topic.id)
end

if params[:values][1] && params[:names][1]
Goal.create(:quantity=>params[:values][0], :name=>params[:names][0], :user_id=> @user_id, :topic_id=> @topic.id)
end

if params[:values][2] && params[:names][2]
Goal.create(:quantity=>params[:values][0], :name=>params[:names][0], :user_id=> @user_id, :topic_id=> @topic.id)
end

if params[:values][3] && params[:names][3]
Goal.create(:quantity=>params[:values][0], :name=>params[:names][0], :user_id=> @user_id, :topic_id=> @topic.id)
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
@goals_proposals = Goal.find_all_by_topic_id(@calling.id)
end

@emailing = Topic.find(:first, :conditions=>['name = ?', "Emailing"])
if @emailing
@goals_proposals = Goal.find_all_by_topic_id(@emailing.id)
end

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


end
