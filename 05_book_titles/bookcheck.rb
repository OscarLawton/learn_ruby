class Book
# write your code here
  attr_accessor :title

  def title=(newTitle)

    check = false
    arr = newTitle.split(' ')

    smlWords = ["and", "an", "a", "of", "the", "in"]  #The words not to be capitalized

    arr[0].capitalize!  #Capitalizes the fist word

    for x in 1..arr.length-1 #Outer loop which loops through the words of the title

      for y in 0..smlWords.length-1  #Inner loop which loops through the words which are not to be capitalized


        if arr[x] != smlWords[y]  #If the word in the title does not match any of the words not to be capitalized check is true
          arr[x].capitalize!
          break

        else                     #Else if a word in the title is one of the words NOT to be captialized the
          check = false
          break
        end

      end

    end

    @title = arr.join(' ')
    print arr
  end


end


book = Book.new

book.title=("an issue of an war and peace")

puts book.title