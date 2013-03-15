# Map Example - Get a simple word count of each input
inputs = ['Peter Piper picked a peck of pickled peppers', 
          'A peck of pickled peppers was picked by Peter Piper']
word_counts = inputs.map do |input|
  input.split(/\s+/).length
end

puts word_counts.inspect