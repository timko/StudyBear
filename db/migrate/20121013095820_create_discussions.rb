class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.integer, :topic_id
      t.text, :text
      t.integer :author_id

      t.timestamps
    end
  end
end