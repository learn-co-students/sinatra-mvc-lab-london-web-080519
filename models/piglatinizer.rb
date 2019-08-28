class PigLatinizer

    def initialize
    end

    def piglatinize(phrase)
        words = split_phrase(phrase)
        pl_words = pl_each_word(words)
        pl_phrase = join_phrase(pl_words)
    end

    def split_phrase(phrase)
        phrase.split(' ')
    end

    def pl_word(word)
        if word[0] =~ /[aeiou]/i
            pl_word = word += "way"
        else
            pl_word = pl_non_vowel_start(word)
        end
        pl_word
    end
    
    def pl_non_vowel_start(word)
        split_word = word.split(/(?=[aeiou])/i, 2)
        pl_word = split_word[1] + split_word[0] + "ay"
    end

    def pl_each_word(split_phrase)
        split_phrase.map{|word| pl_word(word)}
    end

    def join_phrase(words)
        words.join(' ')
    end

end