defmodule DungeonCrawl.Room.Triggers.Exit do
  @behaviour DungeonCrawl.Room.Triggers
  def run(character, _), do: {character, :exit}
end
