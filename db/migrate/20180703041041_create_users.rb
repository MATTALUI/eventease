class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.string  :phone
      t.string  :password_digest
      t.boolean :luser, default: false


      t.timestamps
    end
    add_index :users, :email
  end
end
