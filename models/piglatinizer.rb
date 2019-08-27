class PigLatinizer
    attr_reader :text

    def piglatinize(input)
        input.split(' ').length == 1 ? platinize_word(input) : platinize_sentence(input)
    end

    private

    def isvowel?(character)
        character.match(/[aeiou]/i)
    end

    def platinize_word(word)
        chars = word.split('')
        vowel_index = nil
        chars.each_with_index do |char, index|
            if isvowel?(char)
                vowel_index = index
                break
            end
        end
        if vowel_index == 0
            word << 'w'
        else
            front_slice = word[0...vowel_index]
            end_slice = word[vowel_index..-1]
            word = end_slice + front_slice
        end
        word << 'ay'
    end

    def platinize_sentence(sentence)
        sentence.split(' ').map{|word| platinize_word(word) }.join(' ')
    end
end