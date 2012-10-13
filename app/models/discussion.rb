class Discussion < ActiveRecord::Base
  attr_accessible :author_id, :text, :topic_id
  validates :text, :presence => true
  validates :author_id, :presence => true
  #a discussion could possibly be just part of the forum and not associated with topics
  #todo: add tags
  validates_associated :users
  belongs_to :user
  belongs_to :topic
  def hash {
    :author_id=>self.author_id,
    :text=>self.text,
    :topic_id=> self.topic_id
  }
end
