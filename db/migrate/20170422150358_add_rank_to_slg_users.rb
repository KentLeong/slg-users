class AddRankToSlgUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :slg_users, :rank, :integer
  end
end
