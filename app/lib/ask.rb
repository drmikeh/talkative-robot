def ask_yes_or_no?(question)
  answer = ''
  while answer != 'yes' && answer != 'no'
    puts question
    answer = gets.chomp.downcase
    answer = 'yes' if answer == 'y'
    answer = 'no'  if answer == 'n'
  end
  answer == 'yes' ? true : false
end
