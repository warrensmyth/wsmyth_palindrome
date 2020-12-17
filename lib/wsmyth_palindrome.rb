require "wsmyth_palindrome/version"

module WsmythPalindrome 

	# Returns true for a palindrome, false otherwise.
	def palindrome?
		processed_content == processed_content.reverse
	end


	private

		# Returns content for palindrome testing
		def processed_content
			to_s.scan(/[a-z\d]/i).join.downcase
		end
end

class String
	include WsmythPalindrome
end

class Integer
	include WsmythPalindrome
end