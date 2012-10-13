class CourseAdminController < ApplicationController
  def AdminPanel
    @courses=Course.all
    @problems=Problem.all
  end
end
