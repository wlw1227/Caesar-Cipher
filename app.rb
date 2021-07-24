# Caesar Cipher that takes a string and a key value 

def caesar_cipher(string, key)
  key_value = key  

  # Converts all letters in string to lowercase 
  phrase = string.downcase.chomp  

  # Seperates the letters of the phrase into an array
  array = phrase.chars

  # Converts the letters array into an integer array by using correspong ASCII numbers for each letter
  integer_array = array.map {|i| i.ord}

  # Shifts each letter by the designated key value. Spaces and punctuation don't shift.
  cipher = integer_array.map do |i| 
    if i + key_value > 122
      r = i - 122
		  i = 97 + (r - 1)
	  end   
	  if i >= 32 && i <= 64
		  i = i - key_value
	  end   
	  i + key_value
  end

  # Converts the shifted array back to letters and then joins them back into words. 
  cipher.map {|i| i.chr}.join
end