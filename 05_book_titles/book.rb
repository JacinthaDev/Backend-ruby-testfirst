class Book 
    # write your code here 
    attr_accessor :title

    def initialize(title = "")
        @title = title
    end

    def title=(new_title)
        little_words = %w{a an and in of on or the to}
        words = new_title.split(" ")
    
        @title = words.map.with_index do |word, index| 
            if index != 0 && little_words.include?(word.downcase)
                word.downcase
            else
                word.capitalize
            end
        end.join(' ')
    end
end

