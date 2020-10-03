class CreateBarbers < ActiveRecord::Migration[6.0]
  def change
    create_table :barbers do |t|
      t.string :name
      t.string :image_url
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
