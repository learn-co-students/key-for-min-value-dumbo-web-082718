# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(name_hash)
   if name_hash.length < 1
      nil 
  else
    lowest_key = name_hash.first[0]
    lowest_value = name_hash.first[1]
    name_hash.each do |key, value|
      if value < lowest_value
        lowest_key = key
        lowest_value = value
      end
    end
    lowest_key
  end
end