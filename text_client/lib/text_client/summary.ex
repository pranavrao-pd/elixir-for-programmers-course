defmodule TextClient.Summary do
  @spec display(%{
          :tally => atom | %{:letters => any, :turns_left => any, optional(any) => any},
          optional(any) => any
        }) :: %{
          :tally => atom | %{:letters => any, :turns_left => any, optional(any) => any},
          optional(any) => any
        }
  def display(game = %{tally: tally}) do
    IO.puts([
      "\n",
      "Word so far: #{Enum.join(tally.letters, " ")}\n",
      "Guesses left: #{tally.turns_left}\n"
    ])

    game
  end
end
