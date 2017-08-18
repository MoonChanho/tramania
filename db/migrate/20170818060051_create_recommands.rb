class CreateRecommands < ActiveRecord::Migration
  def change
    create_table :recommands do |t|
      t.string :sights
      t.string :option
      t.long :lat
      t.long :lng
      t.timestamps null: false
    end
  end
end
