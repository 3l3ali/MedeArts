class AddQ1AndQ2AndQ3ToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Q1, :text
    add_column :users, :Q2, :text
    add_column :users, :Q3, :text
  end
end
