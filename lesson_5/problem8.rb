hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.values.flatten.each { |word| puts word.chars.select { |letter| letter =~ /[aeiou]/ } }
