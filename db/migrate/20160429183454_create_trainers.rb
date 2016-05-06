class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :photo
      t.integer :discipline_id
      t.integer :town_id

      t.timestamps null: false
    end
  end
end
