defmodule Partlist do
  defp glue_list(list, divider) do
    { left_list, right_list } = Enum.split(list, divider)
    [Enum.join(left_list, " "), Enum.join(right_list, " ")]
  end

  def part_list(list, divider \\ 1, lists_acc \\ []) do
    if Enum.count(list) <= divider do
      lists_acc
    else
      part_list list, divider + 1, lists_acc ++ [glue_list(list, divider)]
    end
  end
end

defmodule Partlist2 do
  defp glue_list(list, divider) do
    { left_list, right_list } = Enum.split(list, divider)
    [Enum.join(left_list, " "), Enum.join(right_list, " ")]
  end

  def part_list(list) do
    divider = Enum.count(list) - 1
    part_list(list, divider, [])
  end

  def part_list(list, 0, lists_acc) do
    lists_acc
  end

  def part_list(list, divider, lists_acc) do
    part_list list, divider - 1,  [glue_list(list, divider) | lists_acc]
  end
end
