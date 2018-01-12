class CreateExchanges < ActiveRecord::Migration[5.1]
  def change
    create_table :exchanges do |t|
      t.string :name
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
