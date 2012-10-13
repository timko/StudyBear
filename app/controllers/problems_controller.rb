class ProblemsController < ApplicationController

  def redirect_guest
    if !user_signed_in?
      redirect_to "home/logger" and return #not sure if this actually stops the following methods from continuing;
    end
  end

  def new
    redirect_guest
    @topic_id = params[:id]
  end

  def create
    redirect_guest
    t_id = params[:topic_id]
    Problem.create(:topic_id => t_id, :statement => params[:problem][:statement], :user_id => current_user.id)
    redirect_to topic_problems_path(:id => t_id)
  end

  def problems_for_topic
    redirect_guest
    @topic = Topic.find(params[:id])
    @problems = @topic.problems
  end

end
