class CreateSlgUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :slg_users do |t|
      t.string :username
      t.integer :rank_elo
      t.string :soloq_rank
      t.string :role
      t.integer :total_wins
      t.string :most_played
      t.integer :yesterdays_rank
      t.bigint :discord_id
      t.bigint :summoner_id

      t.timestamps
    end
  end
end
