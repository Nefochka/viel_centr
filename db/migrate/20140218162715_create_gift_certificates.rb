class CreateGiftCertificates < ActiveRecord::Migration
  def change
    create_table :gift_certificates do |t|
      t.string :name
      t.string :phone
      t.string :time
      t.string :email
      t.string :type

      t.timestamps
    end
  end
end
