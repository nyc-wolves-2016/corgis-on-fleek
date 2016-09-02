







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
