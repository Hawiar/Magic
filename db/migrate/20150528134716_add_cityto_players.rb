class AddCitytoPlayers < ActiveRecord::Migration
  def change
    add_column :players, :city, :string
  end
end
