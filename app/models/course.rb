class Course < ActiveRecord::Base
  attr_accessible :course_num, :name
  validates :course_num, :presence => true, :uniqueness => true
  validates :name, :presence => true
  has_many :topics
end
