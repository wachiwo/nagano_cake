class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :genre, null:false, foreign_key:true #会員id
      t.string :postal_code, null:false#配送先郵便番号
      t.string :address, null:false#配送先住所
      t.string :name, null:false#配送先宛名
      t.integer :shipping_cost, null:false #送料
      enum payment_method:[クレジットカード,銀行振込]#支払方法
      enum payment_method:[入金待ち,入金確認,製作中,発送準備中,発送済み]#注文ステータス
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }#登録日時
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }#更新日時
      t.timestamps
    end
  end
end
