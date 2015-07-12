def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, n = 2)
	rep_str = []
	while n > 0
		rep_str.push(str)
		n -= 1
	end
	return rep_str.join(' ')
end

def start_of_word (str, n = 1)
	str[0..n - 1]
end

def first_word(sen)
	sen.split(' ')[0]
end

def titleize (sen)
	sen.downcase
	sentence = []
	words_no_cap = %w{a and the an for but nor on at to from by over}

	sen.split(' ').each do |word| 
		if words_no_cap.include?(word)
			sentence.push(word.downcase)
		else
			sentence.push(word.capitalize)
		end
	end
	sentence[0].capitalize!
	return sentence.join(' ')
end