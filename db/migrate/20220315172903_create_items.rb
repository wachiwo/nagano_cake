class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :genre, null:false, foreign_key:true #ジャンルid
      t.string :name, null:false#商品名
      t.text :introduction, null:false#商品説明文
      t.integer :price, null:false#税抜き価格
      t.boolean :is_active, default: true, null:false #販売ステータス
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }#登録日時
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }#更新日時
      t.timestamps
    end
  end
end
