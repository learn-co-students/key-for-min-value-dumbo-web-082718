# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  else
    firstKey, firstVal = name_hash.first
    name_hash.each do |key, value|
      if firstVal > value
        firstVal = value
        firstKey = key 
      end
    end
  end
  return firstKey 
end