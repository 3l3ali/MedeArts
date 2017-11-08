class AddAgeAndCityAndAccommodationToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Age, :integer
    add_column :users, :City, :integer
    add_column :users, :Accommodation, :integer
  end
end
