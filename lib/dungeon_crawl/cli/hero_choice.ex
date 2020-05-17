defmodule DungeonCrawl.CLI.HeroChoice do
  import DungeonCrawl.CLI.BaseCommands
  alias Mix.Shell.IO, as: Shell

  def start do
    Shell.cmd("clear")
    Shell.info("Start by choosing your hero:")
    heroes = DungeonCrawl.Heroes.all()
    find_hero_by_index = &Enum.at(heroes, &1) 

    heroes
    |> display_options
    |> generate_question
    |> Shell.prompt
    |> parse_answer
    |> find_hero_by_index.()
    |> confirm_hero
  end

  defp confirm_hero(option) do
    Shell.cmd("clear")
    Shell.info(option.description)
    if Shell.yes?("Confirm?"), do: option, else: start()
  end
end
