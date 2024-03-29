# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
(1..5).each do |num|
  fake_str = "course#{num}"
  Course.create(:name =>  fake_str, :course_num => fake_str)
end
(1..5).each do |num|
  fake_str = "user#{num}"
  fake_email="user#{num}@gmail.com"
  fake_pass="user#{num}pass"
  User.create( :name => fake_str,:email => fake_email,:password => fake_pass)
end

(1..5).each do |num|
   Topic.create(:course_id=>num, :name=>"topic#{num}")
end


(1..5).each do |num|
  if num - 1 >= 0
   Discussion.create(:topic_id=>num,:user_id=>num, :statement=>"statement#{num}", :replyto=>num)
  else
   Discussion.create(:topic_id=>num,:user_id=>num, :statement=>"statement#{num}") 
  end
end


