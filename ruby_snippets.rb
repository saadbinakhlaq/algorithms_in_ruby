def print_string(result, text)
  puts '--------------------'
  puts text
  puts '--------------------'
  p result
  puts '===================='
  puts result
  puts '--------------------'
end

## Regex
my_string = 'Random array of [122131231232132] stings with 2324 2 3 4 @#$@##%@#%@'
print_string my_string.scan(/\d+/), 'get numbers'

print_string my_string.scan(/\D+/), 'get text'

print_string my_string.scan(/\W+/), 'special chars'
