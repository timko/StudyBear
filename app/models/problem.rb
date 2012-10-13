class Problem < ActiveRecord::Base
  attr_accessible :user_id, :statment
  validates :user_id, :presence => true
  validates :statement, :presence => true
end
