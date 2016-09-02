class Flashcard

  attr_reader :question, :answer, :status

  def initialize(args)
    @question = args.fetch(:question)
    @answer = args.fetch(:answer)
    @status = args.fetch(:status) || "incomplete"
  end

end
