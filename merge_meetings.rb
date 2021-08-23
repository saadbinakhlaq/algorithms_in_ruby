def merge_meetings(meetings)
  sorted_meetings = meetings.sort
  merged_meetings = [sorted_meetings[0]]
  sorted_meetings[1..-1].each do |current_start, current_end|
    last_merged_ms, last_merged_me = merged_meetings[-1]
    if current_start <= last_merged_me
      merged_meetings[-1] = [last_merged_ms, [last_merged_me, current_end].max]
    else
      merged_meetings.push([current_start, current_end])
    end
  end
  merged_meetings
end
