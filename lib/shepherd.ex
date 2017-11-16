defmodule Shepherd do
  def count_sheeps([]), do: 0

  def count_sheeps(sheeps) do
    [head | tail] = sheeps
    count_sheeps(tail) + (if head, do: 1, else: 0)
  end
end

defmodule Shepherd2 do
  def count_sheeps(sheeps, accumulator \\ 0)

  def count_sheeps([], accumulator) do
    accumulator
  end

  def count_sheeps([head | tail], accumulator) do
    count_sheeps tail, accumulator + (if head, do: 1, else: 0)
  end
end

defmodule Shepherd3 do
  def is_sheep?(true), do: 1
  def is_sheep?(false), do: 0

  def count_sheeps([]), do: 0

  def count_sheeps([head | tail]) do
    is_sheep?(head) + count_sheeps(tail)
  end
end

defmodule Shepherd4 do
  def is_sheep?(true), do: 1
  def is_sheep?(false), do: 0

  def count_sheeps(sheeps, accumulator \\ 0)

  def count_sheeps([], accumulator), do: accumulator

  def count_sheeps([head | tail], accumulator) do
    count_sheeps(tail, is_sheep?(head) + accumulator)
  end
end

defmodule Shepherd5 do
  def is_sheep?(true, acc), do: 1 + acc
  def is_sheep?(false, acc), do: acc

  def count_sheeps(sheeps) do
    List.foldl sheeps, 0, &is_sheep?/2
  end
end

defmodule Shepherd6 do
  def count_sheeps(sheeps) do
    Enum.count sheeps, fn x -> x end
  end
end

defmodule Shepherd7 do
  def count_sheeps(sheeps) do
    Enum.filter(sheeps, fn x -> x end) |> Enum.count
  end
end

defmodule Shepherd8 do
  defp counter(:error), do: []
  defp counter({:ok, list}), do: list

  def count_sheeps(sheeps) do
    Enum.group_by(sheeps, &(&1)) |> Map.fetch(true) |> counter |> Enum.count
  end
end

defmodule Shepherd9 do
  def count_sheeps(sheeps) do
    Enum.map_join(sheeps, &(if &1, do: "1", else: "")) |> String.length
  end
end

defmodule Shepherd10 do
  def accumulate(true, acc), do: acc + 1
  def accumulate(false, acc), do: acc
  def count_sheeps(sheeps) do
    Enum.reduce(sheeps, 0, &accumulate/2)
  end
end
