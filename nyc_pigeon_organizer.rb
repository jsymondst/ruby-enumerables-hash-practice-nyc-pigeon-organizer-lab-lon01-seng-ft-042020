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

pigeon_data.each() do |prop, values|
  puts "prop: #{prop},"
  puts "  values: #{values}"
  pigeon_data[prop].each() do |value, names|
    puts "    value: #{value}"
    puts "      names: #{names}"
    pigeon_data[prop][value].each do |name|
      puts "#{name}.#{prop} = #{value}"
  end
end

def nyc_pigeon_organizer(data)
  output = {}
  # data.reduce({}) do |memo,(key,value)|
  #   puts "memo#{memo}, key: #{key}, value:#{value}"
  # end

end
