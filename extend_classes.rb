# Preston Copeland
# July 5, 2013
# Tealeaf coures 1
# Chris Pine's 'How to Program,' ch. 13

# Extending built-in classes
# Extend the built-in classes. How about making your shuffle method on page 75
# an array method? Or how about making factorial an integer method? 4.to_roman,
# anyone? In each case, remember to use self to access the object the method is
# being called on (the 4 in 4.to_roman).

class Array

  def shuffle
    shuffled = Array.new(self.length)
    originalSize = self.length
    while(!self.empty?)
      entry = self.pop
      newPosition = rand(originalSize)
      while(shuffled[newPosition] !=nil)
        newPosition = rand(originalSize)
      end
      shuffled[newPosition] = entry
    end
    shuffled
  end

end

class Integer

  def factorial
    return "Can't do a factorial for a negative" if self<0
    return 1 if self <= 1
    sum = 1
    sum.upto(self) {|i| sum *= i}
    sum
  end

  def newRoman
  new_roman_self = ""
  new_roman_self += "M"*(self/1000)
  new_roman_self += if(self%1000/100==9)
                "CM"
              elsif(self%1000/100==4)
                "CD"
              else
                "D"*(self%1000/500)+"C"*(self%500/100)
              end
  new_roman_self += if(self%100/10==4)
                "XL"
              elsif(self%100/10==9)
                "XC"
              else
                "L"*(self%100/50)+"X"*(self%50/10)
              end
  new_roman_self += if(self%10==9)
              "IX"
            elsif(self%10==4)
              "IV"
            else
              "V"*(self%10/5) + "I"*(self%5)
            end
  new_roman_self
  end

end





