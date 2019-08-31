defmodule Lists do
  def len([]) do
    0
  end

  def len([ _ | t]) do
    1 + len(t)
  end

  @spec sum([number]) :: number
  def sum([]), do: 0
  def sum([h|t]), do: h + sum(t)

  def double([]), do: []
  def double([h|t]), do: [2 * h | double(t)]

  def square([]), do: []
  def square([h|t]), do: [ h * h | square(t)]

  def map([], _function), do: []
  def map([h|t], function) do
    [ function.(h) | map(t, function)]
  end

  def sum_pairs([]), do: []
  def sum_pairs([h1,h2|t]), do: [ h1 + h2 | sum_pairs(t) ]

  def even_length?([]), do: []
  def even_length?([h|t]) do
    [h | t]
    # |> len
    # |> rem(2) === 0
  end
end
