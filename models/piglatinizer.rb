class PigLatinizer

    def piglatinize(phrase)
        words = phrase.split(" ")
        new_phrase = words.map do |word|
            # do something
            pigify(word)
        end
        new_phrase.join(" ")
    end

    def pigify(word)
        new_word = ""
        if word[0].downcase.match(/[aeiou]/)
            new_word = word + "way"
        else
            first_vowel = word.index(/[aeiou]/)
            new_word = word[first_vowel..word.length] + word[0..first_vowel-1] + "ay"
          #  new_word = word[word.index(/[aeiou]/)..word.length] + word[0..word.index(/[aeiou]/)-1] + "ay"
        end
        new_word
    end



end