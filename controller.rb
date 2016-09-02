class Controller

  def initialize(args)
    @view = args.fetch(:view)
    @flashcard_stack = args.fetch(:flashcard_stack)
  end

  def run
    until @flashcard_stack.empty?
      flashcard = @flashcard_stack.next
      @view.display_question(flashcard.question)
      answer = @view.get_response
      if flashcard.is_correct?(answer)
        @view.good_job
      else
        @view.incorrect_message(flashcard.answer)
      end
    end
  end

end
