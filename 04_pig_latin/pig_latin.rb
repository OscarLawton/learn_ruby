#write your code here

def translate(word)
  check = false
  mulitChecker = false
  arr = word.split('')


  print arr
  puts arr.length
  if arr[0] == " " && arr[arr.length-1] != " "
    puts "first ran"
    arr.delete_at(0)
    print arr
  elsif arr[arr.length-1] == " "  && arr[0] != " "
    puts "second ran"
    arr.delete_at(arr.length-1)
    print arr
  elsif arr[0] == " " && arr[arr.length-1] == " "
    puts "third ran"

    arr.delete_at(0)
    arr.delete_at(arr.length-1)
    print arr
  end

    for x in 0..arr.length

      if arr[x] == " "
        check = true
        puts "WEll there you go"
      end
    end


  if mutliWordChecker(arr)
    puts " multiWord Check Ran"
    return multiWord(arr).join('')
  end

  if check == true
    arr2 = Array.new
    spaceInWords = 0
    for x in 0..arr.length-1
      if arr[x] != " "
        arr2[x] = arr[x]

        puts x
      else
        puts "the else ran!"
        spaceInWords = x
        puts x
        break

      end
    end
    print arr2
    arrayLength = (arr.length-1) - spaceInWords
    puts "Array legnth " + arrayLength.to_s
    arr3 = Array.new(arrayLength)
    puts arr3.length
    puts "The space in words" + spaceInWords.to_s
    for y in spaceInWords+1..arr.length-1
      puts y
      arr3[y] = arr[y]

    end
    arr4 = arr3.last(3)
    puts "final array here"
    print  arr4
    print arr2

    arr2 = checkerMethod(arr2)
    arr4 = checkerMethod(arr4)
    puts "line 67"
    print arr4
    puts "line 69"
    arr5 = Array.new()

    arr5 = arr2
    arr5.push(' ')
    arr5.push(arr4)

    word2 = arr5.join('')
    puts "array five here"

    #puts word2
    return word2
  end


  if check == false
    return checkerMethod2(arr).join('')

    #return checkerMethod(arr).join('')

  end

end





def checkerMethod(arr)


  puts "Checker method ran"
  if arr[0] == "a" || arr[0] == "e" || arr[0] == "i" || arr[0] == "o" || arr[0] == "u"


    return vowel(arr)
  elsif  arr[0] != "a" && arr[0] != "e" && arr[0] != "i" && arr[0] != "o" && arr[0] != "u" && arr[1] == 'a' && arr[1] == "e" && arr[1] == "i" && arr[1] == "o" && arr[1] == "u" && arr[2] == "a" || arr[2] == "e" || arr[2] == "i" || arr[2] == "o" || arr[2] == "u"
    puts "onc Cons shoul have ran"
    return oneCons(arr)
  elsif  arr[0] != "a" && arr[0] != "e" && arr[0] != "i" && arr[0] != "o" && arr[0] != "u" && arr[1] != 'a' && arr[1] != "e" && arr[1] != "i" && arr[1] != "o" && arr[1] != "u" && arr[2] == "a" || arr[2] == "e" || arr[2] == "i" || arr[2] == "o" || arr[2] == "u"

    return twoCons(arr)

  elsif  arr[0] != "a" && arr[0] != "e" && arr[0] != "i" && arr[0] != "o" && arr[0] != "u" && arr[1] != 'a' && arr[1] != "e" && arr[1] != "i" && arr[1] != "o" && arr[1] != "u"  && arr[2] != 'a' && arr[2] != "e" && arr[2] != "i" && arr[2] != "o" && arr[2] != "u"
      return threeCons(arr)

  end
end

def checkerMethod2(arr)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz".split('')
  vowArray = vowels.split("")
  #print vowArray
  for x in 0..arr.length
    #puts "outer loop ran " + x.to_s
    for y in 0..vowArray.length
      #puts "inner loop ran " + x.to_s + " " + y.to_s
      if x == 0 && arr[x] == vowArray[y]
        puts "unusual "
        print arr
        puts "first if statement workjed " + x.to_s + " " + y.to_s
        return vowel(arr)
        break

      elsif x == 0 && arr[x] != vowArray[y] && arr[1] == vowArray[y] && arr[x] != "q" && arr[x] != "Q"
        puts "first else if statement ran " + x.to_s + " " + y.to_s

          puts "the first if statement inside the first else if statement ran " + x.to_s + " " + y.to_s

            return oneCons(arr)
            break

      elsif  x == 0 && arr[x] != vowArray[y] && arr[1] == vowArray[y] && arr[x] == "q" || arr[x] == "Q"
        return quMethod(arr)
        break
      elsif x == 1 && arr[x] != vowArray[y] && arr[2] == vowArray[y] && arr[x] != "q"

        #puts "twoCons should hav ran"
        return twoCons(arr)
        break

      elsif x == 1 && arr[x] != vowArray[y] && arr[2] == vowArray[y] && arr[x] == "q"

        puts "the square checker should have ran"
        return threeCons(arr)
        break

      elsif x == 2 && arr[x] != vowArray[y] && arr[3] == vowArray[y]

        puts "three cons should run"
        return threeCons(arr)
        break
      end

    end
  end
end

def vowel(arr)
  puts "vowel method ran"
  arr[arr.length] = "a"
  arr[arr.length] = "y"
  return arr
end


def oneCons(arr)
  puts "oneCons method ran"

  arr[arr.length] = arr[0]
  for x in 0..arr.length
    puts arr[x]
    arr[x] = arr[x+1]
  end
  arr.delete_at(arr.length)

    arr[arr.length] = "a"
    arr[arr.length] = "y"
    arr.delete(nil)
    puts "arr before it leaves oneCons"
    print arr

    return arr
end



def twoCons(arr)
  #puts "twop ocns method ran"
  #puts "here is the array " + arr.join("")

  arr[arr.length] = arr[0]
  arr[arr.length] = arr[1]

  for x in 0..arr.length
    arr[x] = arr[x + 2]
  end
  arr[arr.length] = "a"
  arr[arr.length] = "y"
  arr.delete(nil)
  return arr
end


def threeCons(arr)
  oLen = arr.length
  puts "three cons method ran"
  arr[arr.length] = arr[0]
  arr[arr.length] = arr[1]
  arr[arr.length] = arr[2]
  for x in 0..arr.length
    arr[x] = arr[x + 3]

  end
  arr[oLen] = "a"
  arr[oLen+1] = "y"
  arr.delete(nil)
  print arr

  return arr
end
def threeCons2(arr)
  arr2 = [arr[0], arr[1], arr[2]]
  for x in 0..arr.length
    arr[x] = arr[x + 3]

  end

  arr += arr2
  print arr
end


def quMethod(arr)
  oLen = arr.length
  puts "qu at the start method"
  arr[arr.length] = arr[0]
  arr[arr.length] = arr[1]
  for x in 0..arr.length
    arr[x] = arr[x + 2]
  end

  arr[arr.length] = "a"
  arr[arr.length] = "y"
  arr.delete(nil)
  return arr
end

def multiWord(arr)

  puts "insie multi word"
  print arr
  len = 0
  count = 0
  for x in 0..arr.length

    if arr[x] == " "

      count += 1

    end

  end
  puts " count equals " + count.to_s
  arr2 = Array.new()
  arr3 = Array.new(80)

  x = 0

  while x < arr.length
    if arr[x] != ' '
      arr2[x] = arr[x]


      puts "array length equal " + arr.length.to_s
      arr2.delete(nil)
      arr3.delete(nil)
      print arr3
      #puts x




    else
      arr2.delete(nil)
      puts "else ran"
      #print arr2
      print arr
      puts "the response from checker is "

      arr3 += checkerMethod2(arr2)
      arr3 += [" "]
      print arr3
       puts " the response should have shown"

      arr2.clear

    end

    x+=1
    puts " x is "
    puts x
  end
  arr3 += checkerMethod2(arr2)
  arr3.delete(nil)
  puts " array from multiWord "
  print arr3
  return arr3

end


def mutliWordChecker(arr)
  count = 0
  for x in 0..arr.length
     if arr[x] == " "
       count += 1
     end

  end
  if count > 1
    return true
  else
    return false
  end

end
#threeCons2(['s','q','u','a','r','e'])
print translate("apple")