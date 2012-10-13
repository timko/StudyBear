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
    prob_hash = params[:problem]
    Problem.create(:topic_id => t_id, :statement => prob_hash[:statement], :user_id => current_user.id, :answer => prob_hash[:answer])
    redirect_to topic_problems_path(:id => t_id)
  end

  def problems_for_topic
    redirect_guest
    @topic = Topic.find(params[:id])
    @problems = @topic.problems
  end

  def evaluate
    poss_answer = params[:potential][:ans]
    true_answer = Problem.find(params[:prob_id]).answer
    flash[:notice] = poss_answer == true_answer ? "Correct!" : "NOT Corect!"
    redirect_to topic_problems_path(:id => params[:id])
  end

end
