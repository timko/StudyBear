class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
