# Reduce Example - Get total word count of all inputs
inputs = ['Peter Piper picked a peck of pickled peppers', 
          'A peck of pickled peppers was picked by Peter Piper']
word_count = inputs.reduce(0) do |sum, input|
  sum += input.split(/\s+/).length
end

puts word_count.inspect