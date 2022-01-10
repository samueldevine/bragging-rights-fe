require 'rails_helper'

RSpec.describe Question do
  before :each do
    @question = Question.new(
      id: 1,
      question: 'Question 1',
      correct_answer: 'Answer 1',
      answers: ['Answer 1', 'Answer 2', 'Answer 3', 'Answer 4']
    )
  end

  it 'exists' do
    expect(@question).to be_a Question
  end

  it 'has readable attributes' do
    expect(@question.id).to eq 1
    expect(@question.question).to eq 'Question 1'
    expect(@question.correct_answer).to eq 'Answer 1'
    expect(@question.answers).to eq ['Answer 1', 'Answer 2', 'Answer 3', 'Answer 4']
  end

  it 'determines if an answer is correct' do
    expect(@question.correct?('Answer 1')).to be true
    expect(@question.correct?('Answer 2')).to be false
    expect(@question.correct?('Answer 3')).to be false
    expect(@question.correct?('Answer 4')).to be false
  end
end
