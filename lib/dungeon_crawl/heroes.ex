defmodule DungeonCrawl.Heroes do
  alias DungeonCrawl.Character

  def all, do: [
    %Character{
      name: "Knight",
      description: "Knight does consitent damage and has a strong defence",
      damage_range: 4..5,
      attack_description: "a sword",
      max_hit_points: 18,
      hit_points: 18
    },
    %Character{
      name: "Wizard",
      description: "Wizard has strong attack but low health",
      damage_range: 6..10,
      attack_description: "a fireball",
      max_hit_points: 8,
      hit_points: 8
    },
    %Character{
      name: "Rogue",
      description: "Rogue has a high variability of attack damage",
      damage_range: 1..12,
      attack_description: "a dagger",
      max_hit_points: 12,
      hit_points: 12
    }
  ]
end
