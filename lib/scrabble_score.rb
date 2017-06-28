class String
    define_method(:scrabble) do
        #split the words to characters
        split_words = self.split("")

        #create new Hash by setting the default value to 0 instead of nil
        score = Hash.new(0)

        #store values in hash
        scores = { "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8,
      "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1,
      "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10}
        
        #merge both hashes
        score.merge!(scores)
        
        #start counter at zero
        counter = 0
        
        split_words.each() do |word|
            counter += (score[word])
        end
        #output total count number
        counter
    end
end