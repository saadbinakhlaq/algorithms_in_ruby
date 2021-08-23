def find_range_overalp(point_1, length_1, point_2, length_2)
  highest_starting_point = [point_1, point_2].max
  lowest_end_point = [point_1 + length_1, point_2 + length_2].min
  return (nil, nil) if highest_starting_point >= lowest_end_point

  overlap_length = lowest_end_point - highest_starting_point
  (highest_starting_point, overlap_length)
end

def find_rectangular_overlap(rect_1, rect_2)
  x_overlap_point, overlap_width = find_range_overlap(rect_1['x'], rect_1['width'], rect_2['x'], rect_2['width'])
  y_overlap_point, overlap_height = find_range_overlap(rect_1['y'], rect_1['height'], rect_2['y'], rect_2['height'])

  if not overlap_height or not overlap_width
    return {
      'x': nil,
      'y': nil,
      'width': nil,
      'height': nil
    }
  end

  return {
    'x': x_overlap_point,
    'y': y_overlap_point,
    'width': overlap_width,
    'height': overlap_height
  }
end
