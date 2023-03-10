def get_most_common_letter(text)
  counter = Hash.new(0)
  text.split(" ").join.split("").each do |char|
    counter[char] += 1
  end
  counter.sort_by { |k, v| - v }[0][0]
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"