module FlashcardParser
  def self.parse(filename)
    array_of_rows = File.readlines(filename).map { |row| row[0..-2] }
    make_flashcards_args(array_of_rows)
  end


  private

  def self.make_flashcards_args(array_of_rows)
    flashcard_args_array = []
    array_of_rows.each_with_index do |row,idx|
      if idx%2 == 0
        flash_card_arg = {}
        flash_card_arg[:question] = row
        flash_card_arg[:answer] = array_of_rows[idx + 1]
        flashcard_args_array << flash_card_arg
      end
    end
    flashcard_args_array
  end
end


