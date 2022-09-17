def subString(string, dictionary)
    wordArray = Hash.new(0)
    cleanString = string.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ")

    for word in dictionary do
        for subStr in cleanString
            if subStr.scan(/#{word}/).count > 0
                wordArray[word] += 1
            end
        end
    end

    return wordArray
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts subString("Howdy partner, sit down! How's it going?", dictionary)