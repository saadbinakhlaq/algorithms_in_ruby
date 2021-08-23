number_of_execs = gets.chomp.to_i

number_of_data  = gets.chomp.to_i

timings_of_calls = []
(0...number_of_data).each do |index|
  timings_of_calls << gets.chomp.split.map(&:to_i)
end

# 1481122000 1481122020
# 1481122000 1481122040
# 1481122010 1481122020
# 1481122030 1481122035
# 1481122050 1481122090
# 1481122055 1481122085
# 1481122060 1481122080
# 1481122070 1481122080

timings_of_calls = [
                      [1481122000, 1481122020],
                      [1481122020, 1481122040],
                      [1481122020, 1481122030],
                      [1481122020, 1481122030],
                    ]



number_of_execs = 1
max_number_of_execs = 1

first_start_time, first_end_time = timings_of_calls[0]

timings_of_calls[1..-1].each do |each_call|
  start_time, end_time = each_call

  if start_time >= first_end_time
    number_of_execs -= 1
    first_end_time = end_time
  else
    number_of_execs += 1
  end

  max_number_of_execs = [number_of_execs, max_number_of_execs].max
end

