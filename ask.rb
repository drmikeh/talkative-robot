def ask_yes_or_no?(question)
  answer = ""
  while answer != "yes" && answer != "no"
    puts question
    answer = gets.chomp.downcase
    if answer == "y"
      answer = "yes"
    elsif answer == "n"
      answer = "no"
    end
  end
  answer == "yes" ? true : false
end
