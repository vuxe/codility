# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"
# code from https://github.com/mrhead/codility/blob/master/genomic_range_query.rb

def solution(s, p, q)
  # write your code in Ruby 2.2
  letters = { 'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4 }
  n = s.size
  res = []

  p_sums = Hash.new { |k,v| k[v] = Array.new(n + 1, 0) }

  letters.keys.each do |letter|
    for i in 1..n do
      p_sums[letter][i] = p_sums[letter][i -1]
      p_sums[letter][i] += 1 if s[i-1] == letter
    end
  end
  # puts "#{p_sums}"

  i = 0
  for i in i..p.size-1 do
    # puts "== #{i}"
    letters.keys.each do |k|
      # puts "#{k} | P: #{p[i]}  Q: #{q[i]} | #{p_sums[k][p[i]]} #{p_sums[k][q[i]+1]}"
      if p_sums[k][p[i]] != p_sums[k][q[i]+1]
        res << letters[k]
        break
      end
    end
  end
  res

  
end