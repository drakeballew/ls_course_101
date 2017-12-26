def staggered_case(string)
  string = string.downcase
  staggered = ''
  need_upper = true

  string.chars.each do |char|
    if char =~ (/[a-z]/i)
      if need_upper
        staggered += char.upcase
      else
        staggered += char.downcase
      end
      need_upper = !need_upper
    else
      staggered += char
    end
  end
  staggered
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('I Love Launch School!')
# p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
