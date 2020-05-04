
def alp(inputArray)
  inputArray.compact.each_cons(2).to_a.reduce(nil) do |acc, pair|
    puts "Acc - #{acc}"
    puts "pair - #{pair}"
    first, second = pair

    if acc.nil?
      first * second
    elsif (first * second) >= acc
        acc = first * second
        acc
    else
        acc
    end
  end
end
