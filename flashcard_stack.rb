class FlashcardStack

  attr_reader :category, :card_list

  def initialize
    @category = args.fetch(:category)
    @card_list = args.fetch(:card_list)
  end

  def add_flashcard(question, answer)
    self.card_list << flashcard = Flashcard.new(question: question, answer: answer)
  end

  def display_question
    self.card_list[flashcard.question]
    compare_answer
  end

  def compare_answer(user_answer)
    if self.card_list(flashcard.status) - "incorrect"
      if self.card_list[flashcard.answer] == user_answer
        self.card_list(flashcard.status) = "correct"
        next_question
      else
        show_answer
        next_question
      end
    elsif
      if self.card_list[flashcard.answer] == user_answer
        self.card_list(flashcard.status) = "correct"
        next_question
      else
        self.card_list(flashcard.status) - "incorrect"
        second_guess
      end
    end
  end

  def next_question

    self.card_list(flashcard.question)
  end

  def second_guess
    self.card_list[flashcard.question]
  end
end
