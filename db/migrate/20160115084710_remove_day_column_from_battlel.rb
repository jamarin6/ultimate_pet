class RemoveDayColumnFromBattlel < ActiveRecord::Migration
  def change
    remove_column :battlels, :day
  end
end
