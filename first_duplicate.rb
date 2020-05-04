
def first_duplicate(a)
  return -1 if a.length < 2

  h = {}

  a.each do |el|
    return el if h[el]
    h[el] = true
  end

  -1
end



