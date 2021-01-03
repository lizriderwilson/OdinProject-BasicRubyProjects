def substrings(string, dictionary)
    split_string = string.split(/\W/)
    result_hash = Hash.new(0)

    split_string.each do |word|
        dictionary.each do |substring|
            if word.match?(substring)
                result_hash[substring] += 1
            end
        end
    end
    result_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)