class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.integer,text :author_id

      t.timestamps
    end
  end
end
