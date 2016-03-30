class CreateKakeibos < ActiveRecord::Migration
  def change
    create_table :kakeibos do |t|
      t.string :incomeitem
      t.integer :incomeprice
      t.string :outcomeitem
      t.integer :outcomeprice
      t.string :summary

      t.timestamps null: false
    end
  end
end
