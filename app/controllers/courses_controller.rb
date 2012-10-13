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

end
