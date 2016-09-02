class FlashcardStack

  attr_reader :category, :card_list

  def initialize(args)
    @category = args.fetch(:category)
    @card_list = args.fetch(:card_list)
  end



end
