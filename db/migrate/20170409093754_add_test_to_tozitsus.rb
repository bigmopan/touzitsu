class AddTestToTozitsus < ActiveRecord::Migration
  def change
    add_column :tozitsus, :uketsuke, :date
    add_column :tozitsus, :retry, :boolean
  end
end
