class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles, id: :uuid do |t|
      t.string     :title, null: false
      t.text       :description
      t.references :volunteer, type: :uuid
      t.references :event, type: :uuid, null: false
      t.references :organization, type: :uuid, null: false
      t.time       :start_time
      t.time       :end_time

      t.timestamps
    end
  end
end
