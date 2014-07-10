class User < ActiveRecord::Base
  has_many :userchallenges
  has_many :challenge, :through => :userchallenges
  has_many :vote
  has_many :userchallenge, :through => :vote
end
