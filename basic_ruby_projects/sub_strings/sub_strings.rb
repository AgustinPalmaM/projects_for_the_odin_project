dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |word, result|
    string.downcase.split(' ').map do |palabra|
      result[word] += 1 if palabra.include?(word)
    end
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)

