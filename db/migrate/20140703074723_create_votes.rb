class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :green
      t.integer :red
      t.integer :user_id
      t.integer :user_challenge_id
      t.timestamps
    end
  end
end
