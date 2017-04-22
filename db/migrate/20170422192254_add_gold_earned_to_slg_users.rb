class AddGoldEarnedToSlgUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :slg_users, :coin_earned, :integer, default: 0
  end
end
