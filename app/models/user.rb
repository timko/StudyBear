class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true
  has_many :follows
  has_many :courses, :through => :follows
end
