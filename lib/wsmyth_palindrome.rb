require "wsmyth_palindrome/version"

class String 

	# Returns true for a palindrome, false otherwise.
	def palindrome?
		processed_content == processed_content.reverse
	end

	# Returns the letters in a string
	def letters
		the_letters = []
		for i in 0..self.length - 1 do
			if self[i].match(/[a-zA-z]/)
				the_letters << self[i]
			end
		end
		the_letters.join
	end

	private

		# Returns content for palindrome testing
		def processed_content
			self.letters.to_s.downcase
	end
end
