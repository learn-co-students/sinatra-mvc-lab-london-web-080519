class PigLatinizer
    def initialize

    end

    def piglatinize(text)
        words = text.split(" ")
        latinized = words.map do |word|
            if word[0].match?(/[aeiou]/i)
                word += "way"
            else
                i = 0
                consonants = ""
                until word[i].match?(/[aeiou]/i) do
                    consonants += word[i]
                    i += 1
                end
                word.slice!(0..i-1)
                word += consonants + "ay"
            end
        end
        latinized_text = latinized.join(" ")
    end
end 