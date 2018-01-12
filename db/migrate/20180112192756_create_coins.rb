class CreateCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :coins do |t|
      t.string :name
      t.string :symbol
      t.text :description
      t.string :url
      t.string :github
      t.string :whitepaper
      t.string :telegram
      t.string :discord
      t.string :logo

      t.timestamps
    end
  end
end
