defmodule StringRepeat do
  def repeat_str(0, _), do: ""
  def repeat_str(n, s) do
    s <> repeat_str(n-1, s)
  end
end

defmodule StringRepeat2 do
  def repeat_str(n, s), do: String.duplicate(s,n)
end

defmodule StringRepeat3 do

  def repeat_str(n, s) do
    repeat_str(n - 1, s, s <> s)
  end

  def repeat_str(1, _s, a), do: a

  def repeat_str(n, s, a) do
    repeat_str(n - 1, s, s <> a)
  end

end
