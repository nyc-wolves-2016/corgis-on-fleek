require_relative 'flashcard'
require_relative 'flashcard_stack'
require_relative 'view'
require_relative 'controller'
require_relative 'Flashcard_parser'


category = View.select_category

file_name = nil
until file_name != nil
  if category == 'otters'
    file_name = 'otter_flashcard_data.txt'
  elsif category == 'nighthawks'
    file_name = 'nighthawk_flashcard_data.txt'
  elsif category == 'raccoons'
    file_name = 'raccoon_flashcard_data.txt'
  else
    category = View.invalid_input
  end
end

flashcard_args = FlashcardParser.parse(file_name)
flashcards = flashcard_args.map { |flashcard_arg| Flashcard.new(flashcard_arg) }
flashcard_stack = FlashcardStack.new(card_list: flashcards)
Controller.new(view: View, flashcard_stack: flashcard_stack).run
