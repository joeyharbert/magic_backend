class Game < ApplicationRecord
  enum playstyle: [:commander, :standard, :brawl]
  has_many :commander_damages
  has_many :players
end
