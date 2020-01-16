json.id @game.id
json.playstyle @game.playstyle
json.players do 
  json.array! @game.players do |player|
    json.id player.id
    json.name player.name
    json.life_total player.life_total
    json.commander_damage do 
      json.array! player.commander_damages do |commander_damage|
        json.attacker_id commander_damage.attacker_id
        json.amount commander_damage.amount
      end
    end
  end
end