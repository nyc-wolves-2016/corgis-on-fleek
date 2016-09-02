class Flashcard

  attr_reader :question, :answer
  attr_accessor :status

  def initialize(args)
    @question = args.fetch(:question)
    @answer = args.fetch(:answer)
    @status = "incomplete"
  end

end
