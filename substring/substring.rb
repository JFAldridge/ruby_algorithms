def substrings(str, lib)
  found_words = {}
  lib.each { |substring| found_words[substring] = str.scan(/(?=#{substring})/).count}
  found_words
end

puts substrings("a bacabada", ['cab', 'ba', 'a'])