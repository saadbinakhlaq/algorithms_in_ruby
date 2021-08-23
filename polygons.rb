data = ["36 30 36 30",
        "15 15 15 15",
        "46 96 90 100",
        "86 86 86 86",
        "100 200 100 200",
        "-100 200 -100 200"]

squares = 0
rectangles = 0
others = 0

data.each do |each_line|
   a, b, c, d = each_line.split.map(&:to_i)

   if [a, b, c, d].min <= 0
      others += 1
      next
   end

   if (a == b) && (b == c) && (c == d)
      squares += 1
   elsif (a == c) && (b == d)
      rectangles += 1
   else
      others += 1
   end
end

puts "#{squares} #{rectangles} #{others}"
