require 'csv'

words = CSV.read('/home/taras/words_script/words.csv')
words_sorted = words.to_a.sort

CSV.open('/home/taras/words_script/words_sorted.csv', 'w') do |csv|
	words_sorted.each do |x|
		csv << x
	end
end

total_chars = 0
words.each { |x| total_chars += x.to_s.length }
average_word_length = total_chars.to_f / words.count

puts "The words are ordered alphabetically in the words_sorted.csv file"
puts "The list contains #{words.count} words."
puts "The average word length for the list is #{average_word_length} chars."

