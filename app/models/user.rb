class User < ActiveRecord::Base
  has_many :userchallenges
  has_many :challenges, :through => :userchallenges
  has_many :votes
  has_many :userchallenges, :through => :votes
end
