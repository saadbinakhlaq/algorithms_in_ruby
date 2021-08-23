def quick_sort(m)
  return m if m.length <= 1

  pivot = m[0]

  less, greater_eq = m[1..-1].partition { |x| x < pivot }
  quick_sort(less) + [pivot] + quick_sort(greater_eq)
end
