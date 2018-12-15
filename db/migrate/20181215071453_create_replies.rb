class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :editor
      t.text :content
      t.integer :board_id

      t.timestamps null: false
    end
  end
end
