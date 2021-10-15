def zipper_list(head_1, head_2)
  tail = head_1
  current_1 = head_1
  current_2 = head_2

  count = 0

  while !current_1.nil? and !current_2.nil?
    if count % 2 == 0
      tail.next = current_2
      current_2 = current_2.next
    else
      tail.next = current_1
      current_1 = current_1.next
    end
    tail = tail.next
    count += 1
  end

  if current_1.nil?
    tail.next = current_1
  end

  if current_2.nil?
    tail.next = current_2
  end

  head_1
end