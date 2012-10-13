class AddDetailsToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :statement, :text
    add_column :problems, :topic_id, :integer
    add_column :problems, :answer, :text
  end
end
