class String
  define_method(:leetspeak) do
    words = self.split()
    new_words = []
    words.each() do |word|
      split_string = word.split("")
      new_letters = []
      split_string.each() do |letter|
        if letter == 'e'
          letter = '3'
        elsif letter == 'o'
          letter = '0'
        elsif letter == 'I'
          letter = '1'
        elsif letter == "s"
          letter = "z"
        end
        new_letters.push(letter)
      end
      if split_string.first()=='s'
        new_letters.shift()
        new_letters.unshift('s')
      end
      new_string = new_letters.join("")
      new_words.push(new_string)
    end
    result = new_words.join(" ")
    result
  end
end
