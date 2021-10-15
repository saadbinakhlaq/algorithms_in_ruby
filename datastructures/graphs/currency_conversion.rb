=begin
# GBP => USD =  1.5
# GBP => EUR = 1.19
# AUD => USD = 1.1
=end
[
  {
    "from" => "AUD",
    "rate" => "0.5",
    "to" => "USD"
  },
  {
    "from" => "USD",
    "rate" => "0.5",
    "to" => "EUR"
  },
  {
    "from" => "EUR",
    "rate" => "0.5",
    "to" => "GBP"
  },
  {
    "from" => "GBP",
    "rate" => "2",
    "to" => "EUR"
  },
  {
    "from" => "EUR",
    "rate" => "2",
    "to" => "USD"
  },
  {
    "from" => "USD",
    "rate" => "2",
    "to" => "AUD"
  }
]

graph = {
  "AUD" => [{"currency" => "USD", "rate" => 0.5}],
  "USD" => [{"currency" => "EUR", "rate" => 0.5}, {"currency" => "AUD", "rate" => 2}],
  "EUR" => [{"currency" => "GBP", "rate" => 0.5}, {"currency" => "USD", "rate" => 2}],
  "GBP" => [{"currency" => "EUR", "rate" => 2}]
}
require "set"

def calculate_conversion(graph, src, dst)
  queue = [[src, 1]]
  total_rate = 1
  visited = Set.new
  visited << src

  while queue.length > 0
    currency, total_rate = queue.shift
    if currency == dst
      return total_rate
    end

    graph[currency].each do |to_currency|
      if !visited.include?(to_currency["currency"])
        visited << to_currency["currency"]
        queue.push([to_currency["currency"], total_rate *= to_currency["rate"]])
      end
    end
  end
  return "None"
end

puts calculate_conversion graph, "AUD", "GBP"
puts calculate_conversion graph, "USD", "GBP"