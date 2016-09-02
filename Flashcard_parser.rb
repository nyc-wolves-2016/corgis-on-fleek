module FlashcardParser
  def self.parse(filename)
    p array_of_rows = File.readlines(filename).map { |row| row[0..-2] }
    #make_flashcards(array_of_rows)
  end


  private

  def make_flashcards(array_of_rows)
    flashcard_array = []
    array_of_rows.each_with_index do |row,idx|
      if idx%2 == 0
        flash_card_arg = {}
        flash_card_arg[:question] = row
        flash_card_arg[:answer] = array_of_rows[idx + 1]
        flashcard_args_array << Flashcard.new(flash_card_arg)
      end
    end
  end
end



FlashcardParser.parse('raccoon_flashcard_data.txt')
