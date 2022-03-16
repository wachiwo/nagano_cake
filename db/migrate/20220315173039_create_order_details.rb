class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.references :order, null:false, foreign_key:true #注文id
      t.references :item, null:false, foreign_key:true #商品id
      t.integer :price, null:false
      t.integer :amount, null:false
      t.integer :making_status, null:false #注文ステータス

      t.timestamps
    end
  end
end
