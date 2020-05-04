# Some people are standing in a row in a park. There are trees between them
# which cannot be moved. Your task is to rearrange the people by their heights
# in a non-descending order without moving the trees. People can be very tall!

# Example

# For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
# sortByHeight(a) = [-1, 150, 160, 170, -1, -1, 180, 190].


# find all indexes of -1
# sort the array
# remove all the -1's
# rebuild array with -1 in the right index and the sorted in the others
def sortByHeight(a)
  new_array = []

  sorted_values = a.dup.sort.tap { |a| a.delete(-1) }

  a.each.with_index do |el, idx|
    if el == -1
      new_array << el
    else
      new_array << sorted_values.shift
    end
  end

  new_array
end
