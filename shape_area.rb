def shapeArea(n)
    if n == 1
      1
    elsif n == 2
      5
    else
      (n ** 2) + (2 ** (n - 1))
    end
end



# 1 => 1
# 2 => 5
# 3 => 13   9 + 4
# 4 => 25   16 + 8
# 5 => 41   25 + 16
