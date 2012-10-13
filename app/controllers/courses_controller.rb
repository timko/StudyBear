class CoursesController < ApplicationController

  def redirect_guest
    if !user_signed_in?
      render "home/logger" and return
    end
  end

  def index
    redirect_guest
    @courses = Course.all
  end

  def new
    redirect_guest
  end

  def create
    course = Course.create(params[:course])
    if course.id
      flash[:notice] = "Course Successfully added"
    end
    redirect_to courses_path
  end
  def create_discussion
    Discussion.create(:topic_id=>params[:id],:user_id=>current_user,:statement=>"default",:replyTo=>params[:discussion])
  end
  def create_enrollment
    Enrollment.create(:course_id=>params[:id], :user_id=>current_user.id)
    flash[:notice]= "Successfully Enrolled"
    redirect_to course_topics_path(:id => params[:id])
  end
  def create_teacher(id,uid)
    Teacher.create(:course_id=>params[:id],:user_id=>current_user.id)
  end
  def show_discussions_for_course
    @course=Course.find(course_id)
    @topics=@course.topics
    @discussions=[]
    @topics.each do |topic| 
      @discussions<< topic.discussions
    end
  end
  def show_discussions_for_topic
    @topic=Topic.find(topic_id)
    @discussions=@topic.discussions
  end


end
