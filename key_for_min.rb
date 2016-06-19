# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_key = nil
  first = 1
  min_val = 0.0
    name_hash.each do |key, val|
      if first == 1
        min_val = val
        min_key = key
        first = 0
      else
        if val < min_val
          min_val = val
          min_key = key
        end
      end
      puts "current: #{key}, #{val}. min: #{min_key}, #{min_val}"
    end

  min_key
end