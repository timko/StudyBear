class AddTextToProblem < ActiveRecord::Migration
  def change
    add_column :problems, :text, :text
  end
end
