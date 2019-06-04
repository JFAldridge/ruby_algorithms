class Book
    attr_accessor :title
    
    CONSONANTS = %w(and if or the a an in of).freeze

    def title=(book)
        @title = book.split(" ").map.with_index do |word, i|
            if i == 0
                word.capitalize 
            elsif !CONSONANTS.include?(word)
                word.capitalize
            else
                word
            end
        end.join(' ')
    end
end

book1 = Book.new
book1.title = 'the'
puts book1.title
