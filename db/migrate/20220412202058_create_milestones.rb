class CreateMilestones < ActiveRecord::Migration[6.1]
  def change
    create_table :milestones do |t|
      t.string :development
      t.string :notes
      t.timestamps
      t.integer :baby_id
    end
  end
end
