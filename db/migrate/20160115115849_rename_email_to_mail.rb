class RenameEmailToMail < ActiveRecord::Migration
  def change
    rename_column :users, :email, :mail
  end
end
