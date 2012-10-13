class Discussion < ActiveRecord::Base
  attr_accessible :author_id, :text, :topic_id
  validates :author_id, :presence=>true
  validates :text, :presence=>true
  #belongs_to :topic
  validates_associated :topic_id
end
