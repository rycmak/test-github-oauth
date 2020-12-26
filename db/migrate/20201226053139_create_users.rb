class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :email
      t.string :nickname
    end
    add_index :users, :uid, unique: true
  end
end
