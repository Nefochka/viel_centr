class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :user_id, :null => false
      t.text :review, :null => false
      t.boolean :status, :default => true
      t.timestamps
    end
  end
end
