class AddReplyToDiscussions < ActiveRecord::Migration
  def change
    add_column :discussions, :replyto, :integer
  end
end
