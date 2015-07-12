# Rule 1: If a word begins with a vowel sound, add an "ay" sound to
# the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end
# of the word, and then add an "ay" sound to the end of the word.


def translate (sentence)
	translated = ''
	words = sentence.split(' ')
	words.each { |word|
		found_vowels = word.scan(/^[aeiou]*/)
		found_consonants = word.scan(/^[bcdfghjklmnpqrstvxzwy]*/)
		if !found_vowels[0].empty?
			translated << word << 'ay'
		elsif !found_consonants[0].empty?
			word = word.tr(found_consonants[0], '')
			translated << word << found_consonants[0] << 'ay'
		end
		if words.length > 1
			translated << ' '
		end
	}
	return translated.rstrip
end