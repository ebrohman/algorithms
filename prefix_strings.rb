# For the given string s, and array of strings a, s is said to be a prefix-
# string of a if it is a concatenation of some prefix of the array a, i.e. if
# there exists some index i, such that s = a[0] + a[1] + ... + a[i]. For
# example, for a = ["one", "two", "three"] strings s = "one" and s = "onetwo"
# are prefix-strings, while s = "two", s = "onetw", and s = "onethree" are
# not.

# Given two arrays of strings a and b, your task is to determine whether all
# the given strings in b are prefix-strings of a.

# Example

# For a = ["one", "two", "three"] and b = ["onetwo", "one"], the output should be prefixStrings(a, b) = true.

# Both of the strings b[0] = "onetwo" and b[1] = "one" are prefix-strings of a.

# For a = ["One", "TwoThree", "Four"] and b = ["One", "OneTwo"], the output should be prefixStrings(a, b) = false.


def prefixStrings(a, b)
  return false if a.length == 1 && b != a

  return true if b.all? { |bstr| a.include?(bstr) }

  b.all? do |bstr|
    if a.any? { |astr| bstr == astr }
      true
    else
      _a = a.dup

      while _a.length > 1 do
        first, *rest = _a
        _a = rest
        _a[0] = first + _a[0]

        puts "B string - #{bstr}"
        puts "Reduced a - #{_a}"
        if bstr == _a[0]
          break true
        else
          f, *l = _a
          _a = l
          _a[0] = f + _a[0]
          puts "Reduced a else - #{_a}"
        end
      end
    end
  end
end


