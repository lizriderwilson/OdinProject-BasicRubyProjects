def caesar_cipher(string, number)
    split_string = string.split("").map do |character|
        if /[a-zA-Z]/.match?(character)
                number.times do
                    character = character.next
                    if character == "aa"
                        character.slice!(0)
                    end
                end
                character
        else
            character
        end
    end
    puts split_string.join
end

caesar_cipher("How can I help you today?", 1)