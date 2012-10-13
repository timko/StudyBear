class Discussion < ActiveRecord::Base
  attr_accessible :user_id, :statement, :topic_id, :replyto
  validates :user_id, :presence=>true
  validates :statement, :presence=>true
  belongs_to :topic
  validates_associated :topic
end
