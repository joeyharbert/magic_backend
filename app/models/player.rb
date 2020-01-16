class Player < ApplicationRecord
  has_many :commander_damages
  belongs_to :game
end
