def mode(*nums)
  puts(nums.class)

  hash = nums.reduce({}) do |acc, val|
    acc[val] ||= 0
    acc[val] += 1
    acc
  end

  puts(hash)

  hash.select { |k, v| v == hash.values.max }.keys
end
