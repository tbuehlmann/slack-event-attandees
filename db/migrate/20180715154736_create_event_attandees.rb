class CreateEventAttandees < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attandees do |t|
      t.belongs_to :event, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :status
      t.text :comment

      t.timestamps
    end
  end
end
