class CreateImmunizations < ActiveRecord::Migration[6.1]
  def change
    create_table :immunizations do |t|
      t.string :vaccine
      t.date :date
      t.integer :baby_id
    end
  end
end
