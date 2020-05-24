defmodule DungeonCrawl.Room.Action do
  alias DungeonCrawl.Room.Action
  defstruct label: nil, id: nil
  @type t :: %DungeonCrawl.Room.Action{
    label: String.t,
    id: atom
  }

  def forward, do: %Action{id: :forward, label: "Move forward"}
  def search, do: %Action{id: :search, label: "Search the room"}
  def rest, do: %Action{id: :rest, label: "Take a better look and rest"}

  defimpl String.Chars do
    def to_string(action), do: action.label
  end
end
