json.id @player.id
json.name @player.name
json.life_total @player.life_total
json.game_id @player.game_id
json.commander_damage do 
  json.array! @player.commander_damages do |commander_damage|
    json.attacker_id commander_damage.attacker_id
    json.amount commander_damage.amount
  end
end