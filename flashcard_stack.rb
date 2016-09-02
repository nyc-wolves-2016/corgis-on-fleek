class FlashcardStack

  attr_reader :category, :card_list

  def initialize(args)
    @card_list = args.fetch(:card_list)
  end

  def next
    self.card_list.delete_at(0)
  end

end
