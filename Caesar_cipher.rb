

def index_shift (current, shift)
    sum = current + shift
    if sum > 25
        while sum > 25
            sum = sum - 26
        end
    elsif sum < 0
        while sum < 0
            sum = sum + 26
        end
    end
    sum
end


def caesar(str, num)
    alphabet_upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    alphabet_lower = alphabet_upper.downcase
    newWord = str
    
    str.each_char.with_index do |letter, index|
      if alphabet_upper.include?(letter)
        idx = alphabet_upper.index(letter)
        move = index_shift(idx, num)
        newWord[index] = alphabet_upper[move]
      elsif alphabet_lower.include?(letter)
        idx = alphabet_lower.index(letter)
        move = index_shift(idx, num)
        newWord[index] = alphabet_lower[move]
      end
    end

    return newWord
end

puts caesar("Zoo and Brew", 28)