def factorial(num)
  if num == 0
    return 1
  else
    num * factorial(num - 1)
  end# write a recursive method for calculating the [factorial](https://simple.wikipedia.org/wiki/Factorial) of a number
end
