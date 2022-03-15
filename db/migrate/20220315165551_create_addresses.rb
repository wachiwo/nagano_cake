class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.references :customers, null:false, foreign_key:true #会員ID
      t.string :name, null:false #宛名
      t.string :postal_code, null:false   #郵便番号
      t.string :address, null:false#住所
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' } #登録日時
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' } #更新日時

      t.timestamps
    end
  end
end
