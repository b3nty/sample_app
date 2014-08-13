class ChangeTableUser < ActiveRecord::Migration
  def change
    remove_column :users, :defis
    add_column :users, :pts, :integer
  end
end
