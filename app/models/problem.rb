class Problem < ActiveRecord::Base
  attr_accessible :user_id, :statement, :topic_id, :answer
  validates :user_id, :presence => true
  validates :statement, :presence => true
  validates :answer, :presence => true
  validates :topic_id, :presence => true
  belongs_to :topic
  
end
