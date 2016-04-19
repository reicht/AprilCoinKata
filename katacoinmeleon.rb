# Coin changer Kata in Ruby. TDD'd with 7 tests, attempting to follow TPP.
#
# Given number of change (in cents), return an array of the least amount of coins
# possible that make up those cents. For example, 72 should return [25, 25, 10, 10, 1, 1].

class Changing

  def changer(val)
    quarters = 0
    dimes = 0
    nickels = 0
    while val >= 25
      quarters += 1
      val -= 25
    end
    while val >= 10
      dimes += 1
      val -= 10
    end
    while val >= 5
      nickels += 1
      val -= 5
    end
    # puts "You recieve: " + quarters.to_s + " quarters, " + dimes.to_s + " dimes, " + nickels.to_s + " nickels, and " + val.to_s + " pennies."
    return [quarters, dimes, nickels, val]
  end
end

# changer(gets.chomp.to_i)
