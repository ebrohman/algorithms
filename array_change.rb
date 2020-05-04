# You are given an array of integers. On each move you are allowed to increase
# exactly one of its element by one. Find the minimal number of moves required
# to obtain a strictly increasing sequence from the input.

# Example

# For inputArray = [1, 1, 1], the output should be arrayChange(inputArray) =
# 3.


def arrayChange(inputArray)
  count = 0
  inputArray.compact!
  return count if inputArray.length < 2

  for i in (0...inputArray.length) do

    next_el = inputArray[i + 1]
    current_el = inputArray[i]

    next unless next_el

    diff = (next_el - current_el)

    if diff < 1
      count += (diff.abs + 1)
      inputArray[i + 1] += (diff.abs + 1)
    end
  end

  count
end
