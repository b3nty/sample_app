class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :user
      t.integer :nb
      t.integer :green
      t.integer :red
      t.integer :diff
      t.integer :diff_moy
      t.integer :pts

      t.timestamps
    end
  end
end
