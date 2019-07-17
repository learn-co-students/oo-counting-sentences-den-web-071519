require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    array_of_indexes = []
    self.split.each_with_index do |word, i|
      if word.end_with?('!') || word.end_with?('.') || word.end_with?('?')
        array_of_indexes << i
      end
    end
    array_of_indexes.count
  end
end
