class Enrollment < ActiveRecord::Base
  attr_accessible :course_id, :user_id
  validates :course_id, :presence=>true
  validates :user_id, :presence=>true
  has_many :users
  has_many :courses
  #add uniqueness constraint
  validates_associated :users
end
