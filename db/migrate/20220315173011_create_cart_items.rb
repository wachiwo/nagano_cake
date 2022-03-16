class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.references :item, null:false, foreign_key:true #商品id
      t.references :customer, null:false, foreign_key:true #会員id
      t.integer :amount, null:false #数量
     
      t.timestamps
    end
  end
end
