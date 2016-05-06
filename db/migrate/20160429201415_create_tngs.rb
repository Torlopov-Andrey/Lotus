class CreateTngs < ActiveRecord::Migration
  def change
    create_table :tngs do |t|
      t.integer :trainer_id
      t.integer :discipline_id
      t.integer :town_id
      t.integer :day
      t.integer :hall
      t.time :time

      t.timestamps null: false
    end
  end
end
