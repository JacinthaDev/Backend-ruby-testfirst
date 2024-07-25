#write your code here

def translate(string)
    array = string.split
    vowels = %w[a e i o u A E I O U]
    pig_latin = array.map do |word|

        if word.start_with?("sch", "qu")
            consonants = word.slice(/^(sch|qu)/)
        elsif word =~ /^[^aeiouAEIOU]+qu/
            consonants = word.slice(/^[^aeiouAEIOU]*qu/)
        else
            consonants = word.slice(/^[^aeiouAEIOU]+/)
        end

        if consonants
            remainder = word[consonants.length..-1]
            remainder + consonants + "ay"
        else
            word + "ay"
        end
    end
    pig_latin.join(" ")
end