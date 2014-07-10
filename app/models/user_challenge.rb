class UserChallenge < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  has_many :vote
  has_many :user, :through => :vote
end
