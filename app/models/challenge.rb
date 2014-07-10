class Challenge < ActiveRecord::Base
  has_many :userchallenges
  has_many :users, :through => :userchallenges
end
