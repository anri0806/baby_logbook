class CreateBabies < ActiveRecord::Migration[6.1]
  def change
    create_table :babies do |t|
      t.string :name
      t.string :sex
      t.string :baby_image_url
      t.date :birthday
    end
  end
end
