defimpl Enumerable, for: Bitmap do
  import :math, only: [log: 1]
  def count(%Bitmap{value: value}) do
    { :ok, trunc(log(abs(value))/log(2)) + 1 }
  end

  def member?(value, bit_number) do
    { :ok, 0 <= bit_number && bit_number < Enum.count(value) }
  end
end

fifty = %Bitmap{value: 50}
IO.puts Enum.count fifty        # => 6

IO.puts Enum.member? fifty, 4   # => true
IO.puts Enum.member? fifty, 6   # => false
