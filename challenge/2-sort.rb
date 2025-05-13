#!/usr/bin/env ruby
###
# Sort integer arguments (ascending)
###

result = []

ARGV.each do |arg|
  # Skip if not an integer (regex: optional '-' followed by digits)
  next unless arg =~ /^-?\d+$/

  i_arg = arg.to_i
  inserted = false

  result.each_with_index do |val, index|
    if i_arg < val
      result.insert(index, i_arg)
      inserted = true
      break
    end
  end

  # If not inserted, push at the end
  result << i_arg unless inserted
end

# Print sorted result
puts result
