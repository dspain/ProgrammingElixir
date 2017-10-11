defmodule Chop do
  def guess actual, start..finish do
    IO.puts "#{IO.inspect(actual)} - #{start}..#{finish}"
    make_guess(actual, start, finish, div(finish+start,2))
  end

  def make_guess(actual, _start, _finish, guess) when guess == actual do
    IO.puts "Is it #{guess}"
    IO.puts guess
  end
  def make_guess(actual, start, _finish, guess) when guess > actual do
    IO.puts "Is it #{guess}"
    make_guess(actual, start, guess, div(guess+start,2))
  end
  def make_guess(actual, _start, finish, guess) when guess < actual do
    IO.puts "Is it #{guess}"
    make_guess(actual, guess, finish, div(finish+guess,2))
  end

end
