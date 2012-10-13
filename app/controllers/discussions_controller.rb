class DiscussionsController < ApplicationController
  def redirect_guest
    if !user_signed_in?
      render "home/logger" and return
    end
  end

  def create
    redirect_guest
    @discussion = Discussion.create(:user_id=>current_user.id, :statement=>params[:discussion][:statement]) 
    if @discussion.id
      flash[:notice]="Discussion created"
    end
    redirect_to discussions_path 
  end

  def new
  end

  def reply
  end

  def delete
  end

  def index
    redirect_guest
    @discussions = Discussion.all
  end
  def get_user()
  end
end
