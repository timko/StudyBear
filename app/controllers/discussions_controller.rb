class DiscussionsController < ApplicationController
  def redirect_guest
    if !user_signed_in?
      render "home/logger" and return
    end
  end

  def create
    redirect_guest
#ok=params[:id]
    @discussion = Discussion.create(:user_id=>current_user.id, :statement=>params[:discussion][:statement], :replyto=>params[:discussion][:parent]) 
    if @discussion.id
      flash[:notice]="Discussion created"
    end
    redirect_to discussions_path 
  end

  def new
  end

  def reply
    #redirect_guest
    redirect_to new_discussion_path(:parent=>params[:id])
  end

  def delete
  end

  def index
    redirect_guest
    @discussions = Discussion.all
  end
  def get_user()
  end
  def discussions_for_topic
    redirect_guest
    @topic = Topic.find(params[:id])
    @problems = @topic.discussions
  end

end
