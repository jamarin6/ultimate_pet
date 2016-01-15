class RenameHourToDate < ActiveRecord::Migration
  def change
    rename_column :battlels, :hour, :date
  end
end
