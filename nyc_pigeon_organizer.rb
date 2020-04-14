pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

puts pigeon_data.class #=> Hash
puts [1,2,3].class #=> Array

pigeon_data.reduce({}) do |memo,(prop)|
  puts "prop: #{prop},"
  prop.reduce({}) do |inner_memo, (inner_value, names)|
    puts "value: #{inner_value}"
    puts "   names: #{names}"
  end
end

def nyc_pigeon_organizer(data)
  output = {}
  # data.reduce({}) do |memo,(key,value)|
  #   puts "memo#{memo}, key: #{key}, value:#{value}"
  # end

end
