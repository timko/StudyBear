class CoursesController < ApplicationController

  def index
    if !user_signed_in?
      render "home/logger" and return
    end
    @courses = Course.all
  end

end
