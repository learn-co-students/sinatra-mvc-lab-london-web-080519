class PigLatinizer
    def initialize

    end

    def piglatinize(text)
        words_array = text.split(" ")
        transformed_array = words_array.map do |word|
            if word[0].match?(/[aeiou]/i)
                word += "way"
            else
                i = 0
                first_consonants = ""
                until word[i].match?(/[aeiou]/i) do
                    first_consonants += word[i]
                    i += 1
                end
                word.slice!(0..i-1)
                word += first_consonants + "ay"
            end
        end
        transformed_string = transformed_array.join(" ")
    end
end