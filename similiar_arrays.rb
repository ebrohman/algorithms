# Two arrays are called similar if one can be obtained from another by
# swapping at most one pair of elements in one of the arrays.

# Given two arrays a and b, check whether they are similar.

# def areSimilar(a, b)
#   asorted = a.each_cons(2).to_a.map(&:sort)
#   bsorted = b.each_cons(2).to_a.map(&:sort)

#   puts "asorted - #{asorted}"
#   puts "bsorted - #{bsorted}"

#   asorted.all? { |tup| bsorted.include?(tup) }
# end

# a: [1, 2, 3]
# b: [2, 1, 3]

def areSimilar(a,b)
  swapped = false
  non_similar = nil

  return true if a.empty? && b.empty?
  return true if a == b
  return true if a.length <= 2


  a.each.with_index do |number, idx|
    break if swapped

    if b[idx] != number
      swapped = true

      next unless b.include?(number)

      position = b.index(number)

      non_matching = b[position]

      b[position] = b[idx]
      b[idx]      = non_matching
    end
  end

  non_similar || a == b
end
