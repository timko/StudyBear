class Topic < ActiveRecord::Base
  attr_accessible :name, :course_id
  validates :name, :presence => true
  validates :course_id, :presence => true
  belongs_to :course
  has_many :problems
  has_many :discussions
end
