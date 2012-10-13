class AddDetailsToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :statement, :text
  end
end
