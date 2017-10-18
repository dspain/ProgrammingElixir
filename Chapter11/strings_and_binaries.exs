defmodule StringsAndBinaries do
  def printable?(string) do
    Enum.all?(string, &(&1 in ?\s .. ?~))
  end

end
