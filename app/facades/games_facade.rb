class GamesFacade
  class << self
    def get_questions
      questions = GamesService.get_game[:data]
      questions.map do |question|
        Question.new(question)
      end
    end
  end
end
