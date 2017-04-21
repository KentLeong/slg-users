class AddCoinsToSlgUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :slg_users, :coins, :integer, default: 0
  end
end
