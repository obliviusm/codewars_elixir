defmodule StringRepeat do
  def repeat_str(0, _), do: ""
  def repeat_str(n, s) do
    s <> repeat_str(n-1, s)
  end
end
