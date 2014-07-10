class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :defi

      t.timestamps
    end
  end
end
