class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

<<<<<<< HEAD
=======
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

>>>>>>> 6628a4335f45de1a9824214f1e1094b6cdc44638
end
