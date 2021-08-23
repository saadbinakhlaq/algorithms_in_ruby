def solution(a)
  sum      = 0
  left_sum = 0
  mid_sum  = 0
  size     = a.length
  totals   = [0] * size

  (0...size).each do |index|
    sum          += a[index]
    totals[index] = sum
  end

  left = 1
  right = size - 2

  while left + 1 < right
    left_sum  = totals[left - 1]
    mid_sum   = totals[right - 1] - totals[left]
    right_sum = totals[size - 1] - totals[right]

    if left_sum == mid_sum && mid_sum == right_sum
      return 1
    elsif left_sum > right_sum
      right -= 1
    elsif  left_sum < right_sum
      left  += 1
    else
      left  += 1
      right -= 1
    end
  end

  return 0
end
