class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :defis
      t.integer :green
      t.integer :red
      t.timestamps
    end
  end
end
