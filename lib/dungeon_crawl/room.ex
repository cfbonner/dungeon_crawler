defmodule DungeonCrawl.Room do
  alias DungeonCrawl.Room
  import DungeonCrawl.Room.Action
  defstruct description: nil, actions: []

  def all, do: [
    %Room{
      description: "This room is wild",
      actions: [forward(), rest()]
    },
  ]
end
