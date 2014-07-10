class CreateUserChallenges < ActiveRecord::Migration
  def change
    create_table :user_challenges do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.integer :green
      t.integer :red
      t.timestamps
    end
  end
end
