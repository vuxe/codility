# http://blog.codility.com/2012/06/sigma-2012-codility-programming.html
def solution(h)
  # write your code in Ruby 2.2
  stack = []
  cpt = 0
  
  h.each do |height|
    while stack.any? and stack.last > height
      stack.pop
    end
    
    if stack.any? and stack.last == height
      next
    end
    stack << height
    cpt += 1
    
  end
  
  cpt
end