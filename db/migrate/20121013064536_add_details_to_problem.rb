class AddDetailsToProblem < ActiveRecord::Migration
  def change
    add_column :problems, :author_id, :integer,
    add_column :problems, :text, :text
  end
end
