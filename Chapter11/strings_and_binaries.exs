defmodule StringsAndBinaries do
  def printable?(string) do
    Enum.all?(string, &(&1 in ?\s .. ?~))
  end

  def anagram?(word1, word2) do
    Enum.sort(word1) == Enum.sort(word2)
  end
end
