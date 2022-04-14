require 'pry-byebug'
# def caesar_cipher(message, key)
#   alphabet = 'abcdefghijklmnopqrstuvwxyz'
#   message_arr = message.split('')
#   index_to_upcase = []
#   message_arr.each { |char| index_to_upcase.push(message.index(char)) if char.downcase != char }

#   new_message = []
#   message_arr.each do |letter|
#     if letter.downcase.match?(/[a-z]/) == true
#       if (alphabet.index(letter.downcase) + key) > alphabet.length
#         new_message.push(alphabet[alphabet.index(letter.downcase) + key - 26])
#       else
#         new_message.push(alphabet[alphabet.index(letter.downcase) + key])
#       end
#     else
#       new_message.push(letter)
#     end
#   end
#   index_to_upcase.map! { |indice| new_message[indice] = new_message[indice].upcase }
#   new_message.join('')
# end

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def caesar_cipher(message, key)
  message
    .chars
    .map do |letter|
      next letter if letter !~ /[a-z]/i

      alphabet_letter_index = ALPHABET.index(letter)
      rotate_n = if (alphabet_letter_index + key) > 25
                   key - 26
                 else
                   key
                 end
      ALPHABET[alphabet_letter_index + rotate_n]
      binding.pry
    end.join
end

print caesar_cipher('What a String!', 5)
