require 'pry'

class PigLatinizer
    attr_reader :words

    def initialize(words)
        @words = words
    end

    def make_piglatin(word)
        #helper method to make it piglatin
         # #look at each word in the array to determine if it starts with a vowel
        if word[0].match(/[aeiou]/i)
        # # Does it start with a vowel? Yes, add '-way'
            word+"way"
        else
        # If not, find the index of the first vowel
            first_vowel = word.index(/[aeiou]/i)
        #slice it there and keep the preceeding consonants
            consonants = word.slice!(0..first_vowel-1)
        #stick the consonants + "ay" at the end of the word
            word + consonants + "ay"
        end
    end

    def piglatinize
         piggies = words.split(" ")
         piggies.map! { |word| make_piglatin(word) }
         piggies.join(" ")
    end


end