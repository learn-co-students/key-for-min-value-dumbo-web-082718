# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash== {}
    return nil
  else
    numbers=[]
    name_hash.each do |name, num|
      numbers<<num
    end
    numbers.each_with_index do |number,index|
      if numbers.length>2
        if number>numbers[index+1]
          numbers.delete_at(index)
        else
          numbers.delete_at(index+1)
        end
      else
        if number>numbers[index-1]
          numbers.delete_at(index)
        else
          numbers.delete_at(index-1)
        end
      end
    end
    number= numbers.join.to_i
    name_hash.each do |name, num|
      if name_hash[name]==number
        return name
      end
    end
  end
end
