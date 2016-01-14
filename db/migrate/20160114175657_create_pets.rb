class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :owner
      t.integer :age
      t.string :sex
      t.string :type
      t.float :avg_wins
      t.integer :wins
      t.integer :battlels
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
