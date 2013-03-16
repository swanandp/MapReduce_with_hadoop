#! /usr/env/ruby
# encoding: utf-8
# Reducer
# 1. Track change in key
# 2. Keep reducing until key changes
# 3. When key changes:
# 3a. Send Reduced Output to STDOUT
# 3b. Reset reducer and key
prev_key = nil
count = 0


ARGF.each do |line|
  key, value = line.force_encoding("UTF-8").strip.split(/\t/)
  prev_key ||= key
  # 1. Track change in key
  if prev_key != key
        
    # 3a. Send Reduced Output to STDOUT
    # <key><tab><value><newline>
    puts prev_key + "\t" + count.to_s

    # 3b. Reset reducer and key
    prev_key = key
    count = 0
  end
      
  # 2. Keep reducing until key changes
  count += value.to_i
end