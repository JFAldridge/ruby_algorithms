#write your code here
def translate str
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    punctuation = [",", ".", "!", ":", ";", "?"]
    ay = "ay"
    q = false
    translated_word_arr = str.split(" ").map{|word|
    punctuation_and_index = {}
    r = 0
    word.each_char.with_index do |char, index|
        if punctuation.include? char
            punctuation_and_index[index] = char
        end
    end
    punctuation_and_index.each do |ind, punc|
        word.delete!(punc)
    end
    if vowels.include? word[0]
        word += ay 
    else
        front_const = []
        consonant = true
        i = 0
        capitalized = false
        if word[0] == word[0].upcase
            capitalized = true
        end
        while consonant == true
            if word[i] == "q"
                q = true
                front_const.push(word[i]) 
                i += 1
            elsif (!vowels.include? word[i]) || q == true
                front_const.push(word[i]) 
                i += 1
                q = false
            else
                consonant = false
            end
        end
        word = word.slice(front_const.size...word.length) + word.slice(0...front_const.size) + ay
        word = word.downcase
        if capitalized == true
            word[0] = word[0].upcase
        end
        punctuation_and_index.each do |ind, punc|
            word.insert(ind + 2, punc)
        end
        word
    end

}
    pig_latin = translated_word_arr.join(" ")
end

puts translate('quest thong')