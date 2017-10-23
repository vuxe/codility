# see for why we only check 2 & 3: https://github.com/daotranminh/playground/blob/master/src/codibility/MinAvgTwoSlice/proof.pdf
def solution(a)
  # write your code in Ruby 2.2
  position = 0
  length = a.size
  min = nil
  
  if length == 2
    return position
  end
  
  for i in 0...length do
    if i + 1 < length
      tmp = (a[i] + a[i + 1]).to_f / 2.0
      if min.nil? || tmp < min
        min = tmp
        position = i
      end
    end
    if i + 2 < length
      tmp = (a[i] + a[i + 1] + a[i + 2]).to_f / 3.0
      if min.nil? || tmp < min
        min = tmp
        position = i
      end
    end
  end
  
  position
end