=begin
Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.
=end

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def staggered_case(str)
  new_str = ''
  need_upcase = true
  str.size.times do |num|
    if ALPHABET.include?(str[num].downcase)
      if need_upcase
        new_str << str[num].upcase
        need_upcase = !need_upcase
      else
        new_str << str[num].downcase
        need_upcase = !need_upcase
      end
    else
      new_str << str[num]
    end
  end

  new_str
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'