class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :post_id
      # = t.belongs_to :post 가 더 직관적이다.
      # t는 table을 뜻함
      
      t.timestamps null: false
    end
  end
end
