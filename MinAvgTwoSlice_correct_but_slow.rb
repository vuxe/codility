def solution(a)
  # write your code in Ruby 2.2
  position = 0
  length = a.size
  #min = a.slice(0,2).reduce(:+) / 2
  l_slice = 2
  min = nil
  
  if length == 2
    return position
  end
  
  for i in 0...length do
    l_slice = 2
    while l_slice + i <= length
      arr = a.slice(i,l_slice)
      tmp = arr.reduce(:+).to_f / l_slice.to_f
      # puts "#{i} #{l_slice} #{arr} #{tmp}"
      if min.nil? || tmp < min
        min = tmp
        position = i
        # puts "#{position} #{l_slice} #{min} "
      end
      l_slice += 1
    end
    
    
  end
  
  position
end