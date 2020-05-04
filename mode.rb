def mode(*nums)
  hash = nums.reduce({}) do |acc, val|
    acc[val] ||= 0
    acc[val] += 1
    acc
  end

  hash.select { |k, v| v == hash.values.max }.keys
end
