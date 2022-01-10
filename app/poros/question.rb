class Question
  attr_reader :id,
              :question,
              :correct_answer,
              :answers

  def initialize(data)
    @id             = data[:id]
    @question       = data[:question]
    @correct_answer = data[:correct_answer]
    @answers        = data[:answers]
  end

  def correct?(answer)
    answer == @correct_answer
  end
end
