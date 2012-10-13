class TopicsController < ApplicationController

  def redirect_guest
    if !user_signed_in?
      render "home/logger" and return
    end
  end

  #prepares a list of topics for a given course
  #params keys:
  #  :id => the id of the course, whose topics you want to list
  #assign:
  #  @course: the name of the course, whose topics we want listed
  #  @topics: an array of hashes, with each hash containing
  #    :name => name of the topic
  #    :course_id => id of the course to which the topic relates
  #    alternatively, it could be an array of topics objects,
  #    which is what I did, to take advantage of the beauty of Rails
  def topics_for_course
    redirect_guest
    @course = Course.find(params[:id])
    @topics = @course.topics
  end

  def new
    @course_id = params[:id]
  end
  
  #creates a new Topics record
  #params keys:
  #  :id => the id of the course, to which the topics belongs
  #  :topic => a hash of topic information; this hash contains
  #    :name => the name of the topic to create
  def create
    c_id = params[:course_id]
    Topic.create(:course_id => c_id, :name => params[:topic][:name])
    redirect_to course_topics_path(:id => c_id)
  end

end
