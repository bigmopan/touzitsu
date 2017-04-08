class CreateTozitsus < ActiveRecord::Migration
  def change
    create_table :tozitsus do |t|
      t.text :name
      t.text :address
      t.string :kishu
      t.string :error
      t.text :content

      t.timestamps null: false
    end
  end
end
