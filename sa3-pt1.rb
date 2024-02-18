file_name = "data.csv"


data_array = []


File.foreach(file_name) do |line|

  pairs = line.chomp.split(', ')

 
  row_hash = {}
  pairs.each do |pair|
    key, value = pair.split(':')
    row_hash[key] = value
  end


  data_array << row_hash
end


puts data_array