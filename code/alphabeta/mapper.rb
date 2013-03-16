ARGF.each do |l|
  line = l.force_encoding("UTF-8").strip
  next unless line.length > 0
  ('a'..'z').inject({}) { |map, char|
    count = line.scan(Regexp.new(char, 7)).length
    map[char] = count if count > 0
    map
  }.each do |char, count|
    # output to STDOUT
    # <key><tab><value><newline>
    puts char + "\t" + count.to_s
  end
end
