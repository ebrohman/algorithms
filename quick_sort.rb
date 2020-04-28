def quicksort(ary)
  return ary if ary.empty?

  pivot, *tail = ary

  left = tail.select { |x| x < pivot }
  right = tail.select { |x| x >= pivot }

  return *quicksort(left), pivot, *quicksort(right)
end

# => [3,2,1]

# pivot = 3
# tail = [2,1]
# left = [2,1]
# right = []
# *qs([2,1]), 3, *qs([])

# => [2,1]

# pivot = 2
# tail = [1]
# left = [1]
# right = []
# *qs([1]), 2, *qs([])

# => [1]

# pivot = 1
# tail = []
# left = []
# right = []
# *qs([]), 1, *qs[])

# => []

# => []

# => []

# => []
