# write your code here

def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, num = 2)
    Array.new(num, word).join(' ')
end

def start_of_word(word, num)
    word.slice(0...num)
end

def first_word(word)
    array = word.split(" ")
    array[0]
end

def titleize(word)
    little_words = %w{a an and as at but by for if in of on or the to over}
    array = word.split(" ")

    new_array = array.map.with_index do |word, index| 
        if index != 0 && little_words.include?(word.downcase)
            word.downcase
        else
            word.capitalize
        end
    end
    new_array.join(' ')
end
