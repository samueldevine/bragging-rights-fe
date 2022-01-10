class GamesFacade
  class << self
    def get_questions
      questions = GamesService.get_game[:data][0..4]
      questions.map do |question|
        Question.new(question)
      end
    end
  end
end
