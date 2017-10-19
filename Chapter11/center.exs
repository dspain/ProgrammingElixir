defmodule MyStrings do
  def center(dqs) do
    [ longest | _ ] = Enum.sort_by(dqs, &String.length/1) |> Enum.reverse
    length = String.length(longest)
    Enum.map(dqs, &( _pad(&1, length)) )
  end

  defp _pad(string, length) do
    String.pad_leading(string, String.length(string) + div(length - String.length(string), 2))
  end
end
