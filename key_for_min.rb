# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  else
    lowest_value = +1.0/0.0
    arr = []
    name_hash.each do |key, value|
      if value < lowest_value
        lowest_value = value
        arr.push(key);
      end
    end
  end
    arr.pop
end
