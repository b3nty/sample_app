class ChangeTableUser < ActiveRecord::Migration
  def change
    add_column :users, :green, :integer
    add_column :users, :red, :integer
  end
end
