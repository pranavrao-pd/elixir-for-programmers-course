defmodule TextClient do
  @spec start :: no_return
  defdelegate start(), to: TextClient.Interact
end
