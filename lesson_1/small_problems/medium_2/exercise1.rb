# Notes
# Outputs
# Return
# Mutation

require 'pry-byebug'
require 'open-uri'



# Create variable to store longest value
longest = 0
# Read file to string
filename = 'four_score.txt'
read_string = File.read filename
remote_data = open('http://www.gutenberg.org/cache/epub/84/pg84.txt').read
# Split string by . ! ? - regex

## Returns array of sentences
## For each array, split again into array of words (split by space)
### Returns array of words

remote_data.split(/\.|\?|\!/).each do |x|
  sentence_length = x.split().count.to_i # Takes array of sentences, breaks into words, and counts elements
  if sentence_length > longest # If value is longer than previous longest, store as longest
    longest = sentence_length
  end
end

p longest # outputs value of longest sentence







