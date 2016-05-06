class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :card
      t.string :phone
      t.string :name
      t.string :last_name
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
