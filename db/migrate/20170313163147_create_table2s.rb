class CreateTable2s < ActiveRecord::Migration
  def change
    create_table :table2s do |t|
      t.string :name
      t.string :username

      t.timestamps null: false
    end
  end
end
