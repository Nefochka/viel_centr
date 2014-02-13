class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :phone
      t.string :time
      t.string :email
      t.string :type

      t.timestamps
    end
  end
end
