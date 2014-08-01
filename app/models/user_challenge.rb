class UserChallenge < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  has_many :votes
  has_many :users, :through => :votes
end
