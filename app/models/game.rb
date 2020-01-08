class Game < ApplicationRecord
  enum playstyle: [:commander, :standard, :brawl]
end
