# Given a string, find out if its characters can be rearranged to form a
# palindrome.

# Example

# For inputString = "aabb", the output should be
# palindromeRearranging(inputString) = true.

# We can rearrange "aabb" to make "abba", which is a palindrome.

def palindromeRearranging(inputString)
    return true if inputString.reverse == inputString

    map = Hash.new { |h, k| h[k] = 0 }

    inputString.each_char do |letter|
      map[letter] += 1
    end

    map.values.select(&:odd?).length < 2
end
