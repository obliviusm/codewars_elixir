defmodule PartlistTest do

  use ExUnit.Case

  defp testPartList(numtest, arr, ans) do
    IO.puts("Test #{numtest}")
    assert Partlist.part_list(arr) == ans
  end

  test "part_list" do
    testPartList 1, ["I", "wish", "I", "hadn't", "come"],
        [["I", "wish I hadn't come"], ["I wish", "I hadn't come"], ["I wish I", "hadn't come"], ["I wish I hadn't", "come"]]
    testPartList 2, ["cdIw", "tzIy", "xDu", "rThG"],
        [["cdIw", "tzIy xDu rThG"], ["cdIw tzIy", "xDu rThG"], ["cdIw tzIy xDu", "rThG"]]
    testPartList 3, ["vJQ", "anj", "mQDq", "sOZ"],
        [["vJQ", "anj mQDq sOZ"], ["vJQ anj", "mQDq sOZ"], ["vJQ anj mQDq", "sOZ"]]
  end

end

defmodule PartlistTest2 do

  use ExUnit.Case

  defp testPartList(numtest, arr, ans) do
    IO.puts("Test #{numtest}")
    assert Partlist2.part_list(arr) == ans
  end

  test "part_list" do
    testPartList 1, ["I", "wish", "I", "hadn't", "come"],
        [["I", "wish I hadn't come"], ["I wish", "I hadn't come"], ["I wish I", "hadn't come"], ["I wish I hadn't", "come"]]
    testPartList 2, ["cdIw", "tzIy", "xDu", "rThG"],
        [["cdIw", "tzIy xDu rThG"], ["cdIw tzIy", "xDu rThG"], ["cdIw tzIy xDu", "rThG"]]
    testPartList 3, ["vJQ", "anj", "mQDq", "sOZ"],
        [["vJQ", "anj mQDq sOZ"], ["vJQ anj", "mQDq sOZ"], ["vJQ anj mQDq", "sOZ"]]
  end

end
