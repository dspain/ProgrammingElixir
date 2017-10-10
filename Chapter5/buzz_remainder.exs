buzz_remainder = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,x -> x
end

IO.puts buzz_remainder.(0,0,0) #=> FizzBuzz
IO.puts buzz_remainder.(0,1,1) #=> Fizz
IO.puts buzz_remainder.(1,0,1) #=> Buzz
IO.puts buzz_remainder.(1,1,1) #=> 1
