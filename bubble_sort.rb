#bubble_sort
input = [4,3,78,2,0,2]
 
def bubble_sort(input)
  a = 0
  b = 1
  pass = 1
  while pass < input.length
    while b < input.length
        if input[a] > input[b]
            input[a], input[b] = input[b], input[a]
      end
      a += 1
      b += 1
    end
    pass += 1
    a = 0
    b = 1
  end
  print "#{input}\n"
end
 
bubble_sort(input)

#bubble_sort_by
def bubble_sort_by(input)
  pass = 0
  a, b = 0, 1
  while pass < input.length
    while b < input.length
      if (yield input[a], input[b]) > 0
       input[a], input[b] = input[b], input[a]
      end
      a += 1
      b += 1
    end
    pass += 1
    a,b = 0,1
  end
  print "#{input}\n"
end
 
   
 
bubble_sort_by(["hello","hi","hello","hey", "something", "what", "test"]) {|left,right| left.length - right.length}
