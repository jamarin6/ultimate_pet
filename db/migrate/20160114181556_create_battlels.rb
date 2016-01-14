class CreateBattlels < ActiveRecord::Migration
  def change
    create_table :battlels do |t|
      t.string :pet1
      t.string :pet2
      t.date :day
      t.time :hour
      t.string :winner

      t.timestamps null: false
    end
  end
end
