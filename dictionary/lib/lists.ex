defmodule Lists do
  @spec len(list) :: non_neg_integer
  def len([]), do: 0
  def len([_h | t]), do: 1 + len(t)
  @spec sum([number]) :: number
  def sum([]), do: 0
  def sum([h | t]), do: h + sum(t)

  @spec double([number]) :: [number]
  def double([]), do: []
  def double([h | t]), do: [2 * h | double(t)]

  @spec square([number]) :: [number]
  def square([]), do: []
  def square([h | t]), do: [h * h | square(t)]

  @spec map(list, any) :: list
  def map([], _func), do: []

  def map([h | t], func) do
    [func.(h) | map(t, func)]
  end

  @spec sum_pairs([number]) :: [number]
  def sum_pairs([]), do: []
  def sum_pairs([h1, h2 | t]), do: [h1 + h2 | sum_pairs(t)]

  @spec even_length?(list) :: boolean
  def even_length?([]), do: true
  def even_length?([_ | []]), do: false
  def even_length?([_, _ | t]), do: even_length?(t)
end
