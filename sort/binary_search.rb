def binary_search(seq, t)
  min = 0
  max = seq.length - 1

  while true
    if max < min
      return -1
    end

    middle = (min + max) / 2
    if seq[middle] < t
      min = middle + 1
    elsif seq[middle] > t
      max = middle - 1
    else
      return middle
    end
  end
end
