class RenameTypeToAnimaltype < ActiveRecord::Migration
  def change
    rename_column :pets, :type, :animaltype
  end
end
