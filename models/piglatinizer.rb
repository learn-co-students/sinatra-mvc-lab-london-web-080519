class PigLatinizer

    def piglatinize(string)
        
        latinize_string = []
        
        string.split(' ').each do |word|
            
            first_consonants = word.split(/([aAeEiIoOuU].*)/).first #ISOLATE FIRT CONSONANT(S)
            first_consonants_length = first_consonants.length
            
            if first_consonants_length > 0
                sliced_word = word[first_consonants_length..word.length]
                updated_word = sliced_word + first_consonants + "ay"
            else
                updated_word = word + "way"
            end
            latinize_string << updated_word    
        end
        latinize_string.join(' ')
    end
    
end