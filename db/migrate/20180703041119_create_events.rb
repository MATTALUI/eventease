class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events, id: :uuid do |t|
      t.references :organizer, type: :uuid, null: false
      t.references :organization, type: :uuid, null: false
      t.string     :name, null: false
      t.text       :description
      t.date       :event_date, null: false

      t.timestamps
    end
  end
end
