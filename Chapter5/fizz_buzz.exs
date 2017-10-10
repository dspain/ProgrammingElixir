buzz_remainder = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,x -> x
end

fizz_buzz = fn n -> IO.puts buzz_remainder.(rem(n,3), rem(n,5), n) end

# IO.puts buzz_remainder.(0,0,0) #=> FizzBuzz
# IO.puts buzz_remainder.(0,1,1) #=> Fizz
# IO.puts buzz_remainder.(1,0,1) #=> Buzz
# IO.puts buzz_remainder.(1,1,1) #=> 1

fizz_buzz.(10)
fizz_buzz.(11)
fizz_buzz.(12)
fizz_buzz.(13)
fizz_buzz.(14)
fizz_buzz.(15)
fizz_buzz.(16)
fizz_buzz.(17)
