# Given a sentence in string datatype form, reverse all the words without reversing the sentence itself.
# Example Input: "This is my stance, but it's not a good one."
# Example Output: "sihT si ym ecnats, tub s'ti ton a doog eno."

str = "Hello World!"
str2 = "This is my stance, but it's not a good one!?"
# str2 = "This is my stance."
solution =     "sihT si ym ecnats, tub s'ti ton a doog eno!?"

puts str2.split(/\s/)

def rev(str)
    str.split(/\s/).map do |word|
        # find punch before reversing
        term = word.scan()
        term = word.reverse

        words_or_punc = term.scan(/^\W+'*/) #(/^\w+'*\w/)
        puts "Words or punc - #{words_or_punc}"

        if words_or_punc.any?
             puts "Term - #{term}"
             puts "In Else - #{term[0..(words_or_punc.length - 1)]}"

            term[(words_or_punc.length)..(term.length)] + term[0...words_or_punc.length].reverse
        else
          term
        end
    end.join(" ")
end

puts "#{rev(str2)}"
puts "#{solution}"
