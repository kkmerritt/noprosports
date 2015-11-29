class Team < ActiveRecord::Base
  validates :name,  presence: true, uniqueness: true
  validates :league, presence: true

has_many :users
end
