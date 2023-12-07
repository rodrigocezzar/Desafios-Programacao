def sum
  n = 0

  n += yield
  n += yield

  n
end

puts sum{42}