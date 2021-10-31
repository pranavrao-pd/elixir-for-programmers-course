defmodule Hangman do
  alias Hangman.Game

  @spec new_game :: %Hangman.Game{
          game_state: :initializing,
          letters: [binary],
          turns_left: 7,
          used: MapSet.t(any)
        }
  defdelegate new_game(), to: Game

  @spec tally(
          atom
          | %{
              :game_state => any,
              :letters => any,
              :turns_left => any,
              :used => any,
              optional(any) => any
            }
        ) :: %{game_state: any, letters: list, turns_left: any}
  defdelegate tally(game), to: Game

  @spec make_move(map, any) ::
          {%{
             :game_state => :already_used | :bad_guess | :good_guess | :lost | :won,
             :letters => any,
             :turns_left => any,
             :used => any,
             optional(any) => any
           }, %{game_state: any, letters: list, turns_left: any}}
  def make_move(game, guess) do
    game = Game.make_move(game, guess)
    {game, tally(game)}
  end
end
