class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.references :order, null:false, foreign_key:true #注文id
      t.references :item, null:false, foreign_key:true #商品id
      t.integer :price, null:false
      t.integer :amount, null:false
      enum payment_method:[製作不可,製作待ち,製作中,製作完了]#注文ステータス
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }#登録日時
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }#更新日時
      t.timestamps
    end
  end
end
