defmodule Greeter do
  def for(name,greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_)     -> "I don't know you"
    end
  end
end

mr_mom = Greeter.for("Michael", "Hi")

IO.puts mr_mom.("Michael") #=> Hi Michael
IO.puts mr_mom.("Alex P")  #=> I don't know you
