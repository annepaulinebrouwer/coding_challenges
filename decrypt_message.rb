### Encrypt
# Step 1: convert to ASCII
# Step 2: # previous_number = 1
          # number = number + previous_number
# Step 3: substract 26 until in ASCII range 97 - 122
# Step 4: convert to ASCII

def encrypt(word)
  previous_num = 1
  word.bytes.map do |num|
    num += previous_num
    previous_num = num
    until (97..122).include?(num)
        num -= 26
    end
    num.chr
  end.join
end

### Decrypt
def decrypt(word)
  # Step 1: convert to ASCII
  # Step 2: start previous_number = 1
  # Step 2: substract previous_number
  # Step 3: add 26 until in ASCII range 97 - 122
  # Step 4: convert to ASCII

  previous_num = 1
  word.bytes.map do |num|
    num -= previous_num
    previous_num += num
    until (97..122).include?(num)
      num += 26
    end
    num.chr
  end.join
end

# p 99.chr
# p "d".bytes
# p encrypt("crime")
# p encrypt("encyclopedia")

word = "crime"
p word == decrypt(encrypt(word))
p decrypt(encrypt("encyclopedia"))
