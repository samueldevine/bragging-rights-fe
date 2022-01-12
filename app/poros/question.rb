class Question
  attr_reader :id,
              :question,
              :correct_answer,
              :answers

  def initialize(data)
    @id             = data[:attributes][:id]
    @question       = CGI.unescapeHTML(data[:attributes][:question])
    @correct_answer = data[:attributes][:correct_answer]
    @answers        = html_cleanup(data[:attributes][:answers])
  end

  def correct?(answer)
    answer == @correct_answer
  end

  def html_cleanup(answers)
    answers.map do |answer|
      CGI.unescapeHTML(answer)
    end
  end
end
