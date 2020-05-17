defmodule DungeonCrawl.CLI.RoomActionsChoice do
  import DungeonCrawl.CLI.BaseCommands
  alias Mix.Shell.IO, as: Shell

  def start(room) do
    room_actions = room.actions
    find_action_by_index = &Enum.at(room_actions, &1)

    chosen_action = 
      room_actions
      |> display_options
      |> generate_question
      |> Shell.prompt
      |> parse_answer
      |> find_action_by_index.()

    {room, chosen_action}
  end
end
