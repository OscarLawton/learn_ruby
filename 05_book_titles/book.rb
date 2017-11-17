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
          check = true
        else                     #Else if a word in the title is one of the words NOT to be captialized the
          check = false
          break
        end

      end

      if check             #If check equals true capitalize the word and the outer loops continues where it left off
        arr[x].capitalize!
        check = false
      end

    end

    @title = arr.join(' ')

  end


end


book = Book.new

book.title=("an issue of war and peace")

puts book.title