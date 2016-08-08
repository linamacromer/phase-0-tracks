# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1,"o")
# => “zoom”

p "enhance".rjust(11).ljust(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".insert(-1," suspects")
#=> "the usual suspects"

p " suspects".insert(0,"the usual")
#or
p " suspects".prepend("the usual")
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

p "z".getbyte(0)
# => 122 
# (What is the significance of the number 122 in relation to the character z?) I honestly stumbled on this correct answer. I saw this one, and skipped over it because it seemed like it needed more research. I was looking through all the string methods in the docs, trying to figure out how to do the next one, when i saw the getbyte method, and the example seemed weird enough that I thought to try it in hopes that z might return 122, which it did... More research needs to be done for this, but for now, I have the answer!

p "How many times does the letter 'a' appear in this string?".count("a")
# => 4