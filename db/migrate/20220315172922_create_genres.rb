class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.string :name, null:false #ジャンル名
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }#登録日時
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }#更新日時
      t.timestamps
    end
  end
end
