class AddDateToTozitsus < ActiveRecord::Migration
  def change
    add_column :tozitsus, :date, :timestamp
    add_column :tozitsus, :retry, :boolean
  end
end
