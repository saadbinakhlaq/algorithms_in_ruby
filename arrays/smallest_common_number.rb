=begin
Find the Smallest Common Number
Given three integer arrays sorted in ascending order, return the smallest number that is common in all three arrays.
=end

def find_least_common_number(a, b, c)
  i = 0
  j = 0
  k = 0

  while(i < a.length && j < b.length && k < c.length)
    if (a[i] == b[j] && b[j] == c[k])
      return a[i]
    end

    if (a[i] <= b[j] && a[i] <= c[k])
      i += 1
    elsif (b[j] <= a[i] && b[j] <= c[k])
      j += 1
    elsif (c[k] <= a[i] && c[k] <= b[j])
      k += 1
    end
  end

  return -1
end

v1 = [6, 7, 10, 25, 30, 63, 64]
v2 = [1, 4, 5, 6, 7, 8, 50]
v3 = [1, 6, 10, 14]

result = find_least_common_number(v1, v2, v3)
puts result