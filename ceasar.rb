
def neg_iteration(number,times)
  if !/[a-zA-Z]/.match(number.chr)
    return number
  end

  for i in times...0
    number -= 1

    if number > 92 && number < 97
      number = 122
    elsif number < 91 && number < 65
      number = 90
    end
  end
  return number
end


def iteration(number,times)
  if !/[a-zA-Z]/.match(number.chr)
    return number
  end
  for i in 1..times
    number += 1
    if number > 122 && number >= 97
      number = 97
    elsif number < 97 && number > 90
      number = 65
    end
  end
  number
end

def array_to_ord(arr,num)
  test = arr.map! do |n|
    n = n.ord
    if num >= 0
    iteration(n,num)
    else
      neg_iteration(n,num)
    end
  end
  
  test = arr.map! {|n| n = n.chr}
  return test
end

def ceasar_cipher(string,num)
  string_to_array = string.split("")

  array_to_ord(string_to_array,num)

  return string_to_array.join("")
end


puts ceasar_cipher("aA bB cC",100)

