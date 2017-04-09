class AddImageToTozitsus < ActiveRecord::Migration
  def change
    add_column :tozitsus, :image, :string
  end
end
