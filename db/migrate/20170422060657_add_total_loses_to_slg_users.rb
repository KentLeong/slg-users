class AddTotalLosesToSlgUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :slg_users, :total_loses, :integer, default: 0
  end
end
