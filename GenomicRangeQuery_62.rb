# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(s, p, q)
  # write your code in Ruby 2.2
  factor = nil
  arr = []
  i = 0
  res = []
  
  for i in 0...s.length do 
    case s[i]
    when 'A'
      arr << 1
    when 'C'
      arr << 2
    when 'G'
      arr << 3
    when 'T'
      arr << 4
    end
  end
  
 #puts "#{arr.to_s} #{s} #{p.to_s} #{q.to_s}"
  
  i = 0
  for i in 0...p.size do
    tmp = arr.slice(p[i],q[i] - p[i] + 1)
    #puts "#{tmp}"
    res << tmp.min
  end
  #puts "#{res}"
  
  res
  
end