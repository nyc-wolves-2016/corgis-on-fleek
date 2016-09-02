class Flashcard

  attr_reader :question, :answer

  def initialize(args)
    @question = args.fetch(:question)
    @answer = args.fetch(:answer)
  end

  def is_correct?(response)
    response == self.answer
  end
end
