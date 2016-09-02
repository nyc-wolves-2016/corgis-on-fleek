
module View

  def self.display_question(question)
    puts question
  end

  def self.get_response
    gets.chomp.downcase
  end

  def self.good_job
    puts "Good job!\n\n"
  end

  def self.incorrect_message(answer)
    banner = File.read('ascii.txt')
    puts banner
    puts "The answer was #{answer}. \n\n"
  end

  def self.select_category
    puts "Choose a category to be quizzed in: enter 'otters', 'nighthawks', or 'raccoons'."
    gets.chomp.downcase
  end

  def self.invalid_input
    puts "Please enter a valid category: "
    get_response
  end


end









