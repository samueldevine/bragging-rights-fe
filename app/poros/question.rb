class Question
  attr_reader :id,
              :question,
              :correct_answer,
              :answers

  def initialize(data)
    @id             = data[:attributes][:id]
    @question       = data[:attributes][:question]
    @correct_answer = data[:attributes][:correct_answer]
    @answers        = data[:attributes][:answers]
  end

  def correct?(answer)
    answer == @correct_answer
  end
end
