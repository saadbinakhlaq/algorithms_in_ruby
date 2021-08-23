def solution(a, b, m, x, y)
  total_weight_per_round = 0
  number_of_stoppages = 0
  max_person_count = 0

  floors = []
  current_person = 0
  start_lift = false

  while current_person < a.size
    if total_weight_per_round + a[current_person] <= y && max_person_count + 1 <= x
      total_weight_per_round += a[current_person]
      max_person_count += 1

      floors << b[current_person]

      if  current_person == a.size - 1
        start_lift = true
      end

      current_person += 1
    else
      start_lift = true
    end

    if start_lift
      number_of_stoppages += floors.uniq.size + 1
      floors = []
      max_person_count = 0
      total_weight_per_round = 0
      start_lift = false
    end
  end

  number_of_stoppages
end

a = [60, 80, 40]
b = [2, 3, 5]
m = 5
x = 2
y = 200

a = [40, 40, 100, 80, 20]
b = [3, 3, 2, 2, 3]
m = 3
x = 5
y = 200
puts solution(a, b, m, x, y)