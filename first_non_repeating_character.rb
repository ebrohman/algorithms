def firstNotRepeatingCharacter(s)
  return s if s.length == 1

  ary = s.split("")

  non_duplicate = nil

  ary.each do |c|
    break if non_duplicate

    if ary.count(c) < 2
      non_duplicate = c
    end
  end


  non_duplicate || '_'
end

