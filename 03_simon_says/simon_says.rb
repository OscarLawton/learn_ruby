#write your code here
def echo(say_what)
  say_what
end


def shout(sayWhat)
  sayWhat.upcase!
end


def repeat(str, n=2)
  asdf = ""
   for x in 1..n
     if x < n
       asdf += str + " "
     else
       asdf += str
     end

   end
  return asdf
end

def start_of_word(word,n)
  n -=1
  arr = word.split("")
  array = Array.new(n)
  for x in 0..n
    array[x] = arr[x]
  end
  return array.join()
end


def first_word(sent)
  arr = sent.split(" ")

  return arr[0]
end

def titleize(words)
  arr = words.split(" ")

  for x in 0..arr.length-1
    if x > 0
      if arr[x] != "and" && arr[x] != "over" && arr[x] != "the"
      arr[x] = arr[x].capitalize
      else
        arr[x] = arr[x]
      end
    else
      arr[x] = arr[x].capitalize
    end
  end



  return arr.join(' ')
end

print titleize("jaws and the killer instinct")

