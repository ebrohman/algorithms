# For sequence = [1, 3, 2, 1], the output should be
# almostIncreasingSequence(sequence) = false.

# There is no one element in this array that can be removed in order to get a
# strictly increasing sequence.

# For sequence = [1, 3, 2], the output should be
# almostIncreasingSequence(sequence) = true.

# You can remove 3 from the array to get the strictly increasing sequence [1,
# 2]. Alternately, you can remove 2 to get the strictly increasing sequence
# [1, 3].


def almostIncreasingSequence(sequence)
  index = nil

  swaps = sequence.compact.each_cons(2).to_a.each do |pair|
    first, last = pair

    if first >= last
      index = sequence.compact.index(first)
      break
    end
  end

  return false unless index

  try_seq_1 = sequence.dup.compact
  try_seq_2 = sequence.dup.compact

  puts "Index - #{index}"

  puts "Deleted element at idx - #{try_seq_1.delete_at(index)}"
  puts "Deleted element at idx + 1 - #{try_seq_2.delete_at(index + 1)}"

  puts "Seq 1 -#{try_seq_1}"
  puts "Seq 2 - #{try_seq_2}"

  try_seq_1.each_cons(2).to_a.all? do |nums|
      nums[1] > nums[0]
  end || try_seq_2.each_cons(2).to_a.all? do |nums2|
      nums2[1] > nums2[0]
  end
end

