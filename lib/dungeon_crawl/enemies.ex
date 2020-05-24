defmodule DungeonCrawl.Enemies do
  alias DungeonCrawl.Character

  def all, do: [
    %Character{
      name: "Orgre",
      description: "A large creature. Big muscles. Angry and hungry.",
      damage_range: 3..5,
      attack_description: "a hammer",
      max_hit_points: 12,
      hit_points: 12
    },
    %Character{
      name: "Orc",
      description: "A green evil creature. Wears armour and an axe.",
      damage_range: 2..4,
      attack_description: "an axe",
      max_hit_points: 8,
      hit_points: 8
    },
    %Character{
      name: "Goblin",
      description: "A small green creature. Wears dirty clothes and a dagger.",
      damage_range: 1..2,
      attack_description: "a dagger",
      max_hit_points: 4,
      hit_points: 4
    }
  ]
end
