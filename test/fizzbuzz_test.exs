defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  [3, 6, 9, 12, 18]
  |> Enum.each(fn n ->
    @n n
    test "three multiples: #{@n}" do
      assert FizzBuzz.validate(@n) == "Fizz"
    end
  end)

  [5, 10, 20, 25, 35]
  |> Enum.each(fn n ->
    @n n
    test "five multiples: #{@n}" do
      assert FizzBuzz.validate(@n) == "Buzz"
    end
  end)


  [15, 30, 60]
  |> Enum.each(fn n ->
    @n n
    test "both: #{@n}" do
      assert FizzBuzz.validate(@n) == "FizzBuzz"
    end
  end)

  test "one_number" do
    assert is_integer(FizzBuzz.validate(1)) 
  end
end