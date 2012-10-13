class Problem < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :author_id, :text
  validates :author_id, :text, :presence =>true
  def hash{
    :author_id=>self.author_id,
    :text=>self.text
  }
end
