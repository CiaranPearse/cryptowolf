class CreateJoinCoinExchange < ActiveRecord::Migration[5.1]
  def change
    #create_table :join_coin_exchanges do |t|
      #t.string :Coins
      #t.string :Exchanges
      create_join_table :coins, :exchanges do |t|
  		t.index [:coin_id, :exchange_id]
  	  end
    #end
  end
end
