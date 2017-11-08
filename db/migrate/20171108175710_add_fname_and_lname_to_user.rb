class AddFnameAndLnameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Fname, :string
    add_column :users, :Lname, :string
  end
end
