class AdminsController < ApplicationController

 layout 'admin'


def add_new_goal

if params[:user_id]

@user_id = params[:user_id]

@topic_name = params[:topic]




@topic = Topic.find(:all, :conditions=>['name = ? and user_id =?', @topic_name, @user_id])[0]
if @topic.nil?
@topic = Topic.create(:name=> params[:topic], :user_id=> @user_id)
end


puts "===================="
puts params[:values][1]
puts "/===================="

if params[:values][0] && params[:names][0]
Goal.create(:period=>params[:period], :quantity=>params[:values][0], :name=>params[:names][0], :user_id=> @user_id, :topic_id=> @topic.id)
end

if params[:values][1] && params[:names][1]
Goal.create(:quantity=>params[:values][1],:period=>params[:period], :name=>params[:names][1], :user_id=> @user_id, :topic_id=> @topic.id)
end

if params[:values][2] && params[:names][2]
Goal.create(:quantity=>params[:values][2], :name=>params[:names][2], :period=>params[:period],:user_id=> @user_id, :topic_id=> @topic.id)
end

if params[:values][3] && params[:names][3]
Goal.create(:quantity=>params[:values][3], :name=>params[:names][3], :user_id=> @user_id, :period=>params[:period], :topic_id=> @topic.id)
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


if current_user 
@user_id = current_user.id
puts "current user is"
puts @user_id
else
puts "no current user "
end

if params[:period]
@period = params[:period]
else
@period = "daily"
end

@prospecting = Topic.find(:first, :conditions=>['user_id =? and name = ?', @user_id, "Prospecting"])
if @prospecting
@goals_prospecting = Goal.find(:all, :conditions=>['user_id =? and topic_id = ? and period = ?', @user_id, @prospecting.id, @period]) 
end

@calling = Topic.find(:first, :conditions=>['user_id =? and name = ?',@user_id, "Calling"])
if @calling
@goals_calling = Goal.find(:all, :conditions=>['user_id =? and topic_id = ? and period = ?', @user_id, @calling.id, @period])
end

@emailing = Topic.find(:first, :conditions=>['name = ?', "Emailing"])
if @emailing
@goals_emailing = Goal.find(:all, :conditions=>['user_id =? and topic_id = ? and period = ?', @user_id, @emailing.id, @period])
end



@proposals = Topic.find(:first, :conditions=>['name = ?', "Proposals"])
if @proposals
@goals_proposals = Goal.find(:all, :conditions=>['user_id =? and topic_id = ? and period = ?', @user_id, @proposals.id, @period])
end

@deals = Topic.find(:first, :conditions=>['name = ?', "Deals"])
if @deals 
@goals_deals = Goal.find(:all, :conditions=>['user_id =? and topic_id = ? and period = ?', @user_id, @deals.id, @period]) 
end

@meetings = Topic.find(:first, :conditions=>['name = ?', "Meetings"])
if @meetings
@goals_meetings = Goal.find(:all, :conditions=>['user_id =? and topic_id = ? and period = ?', @user_id, @meetings.id, @period])  
end

    respond_to do |format|
      format.html # index.html.erb
    end

end


def add_metric

@goal = Goal.find(params[:goal_id])


if current_user
DataPoint.create(:user_id=>current_user.id, :goal_id=>params[:goal_id], :quantity=>params[:quantity])
else
DataPoint.create(:goal_id=>params[:goal_id], :quantity=>params[:quantity])
end

if @goal.total
@goal.total = @goal.total + params[:quantity].to_i
else
@goal.total = params[:quantity].to_i
end

@goal.save



    @return_hash = []

    respond_to do |format|
        format.js { render :js => @return_hash.to_json }
    end


end



end
