class RemovePasswordDigestFromBarbers < ActiveRecord::Migration[6.0]
  def change
    remove_column :barbers, :password_digest, :string
  end
end
