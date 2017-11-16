defmodule EvenOrOdd do
  # def even_or_odd(number) do
  #   reminder = rem number, 2
  #   if reminder == 0 do
  #     "Even"
  #   else
  #     "Odd"
  #   end
  # end

  # def even_or_odd(number) when rem(number, 2) == 0, do: "Even"
  # def even_or_odd(_), do: "Odd"

  import Integer
  def even_or_odd(number) when is_odd(number) do
    "Odd"
  end
  def even_or_odd(number) when is_even(number) do
    "Even"
  end

  # def even_or_odd(1), do: "Odd"
  # def even_or_odd(0), do: "Even"
  # def even_or_odd(number), do: even_or_odd(number-2)
end
