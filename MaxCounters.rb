# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n, a)
  # write your code in Ruby 2.2
  arr = [0] * n
  max_c = 0
  
  a.each_with_index do |value,index|
    if value == n + 1
      arr = [max_c] * n
    else
      arr[value - 1] = arr[value - 1] + 1
      max_c = (arr[value -1] > max_c ? arr[value -1] : max_c)
    end
  end
  arr
end