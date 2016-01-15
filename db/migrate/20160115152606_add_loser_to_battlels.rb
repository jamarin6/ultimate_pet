class AddLoserToBattlels < ActiveRecord::Migration
  def change
    add_column :battlels, :loser, :string
  end
end
