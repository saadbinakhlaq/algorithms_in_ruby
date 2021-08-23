def possible_paths(i, j, m, n)
  return 0 if (i > m || j > n)

  return 1 if (i == m || j == n)
  return possible_paths(i+1, j, m, n) + possible_paths(i, j+1, m, n) + possible_paths(i+1, j+1, m, n)
end
