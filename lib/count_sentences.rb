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
    array_of_sentences = []
    array_of_words = self.split
    array_of_words.each_with_index do |word, i|
      if word.end_with?('!') || word.end_with?('.') || word.end_with?('?')
        array_of_indexes << i
      end
    end
    starting_index = 0
    array_of_indexes.each do |retrieved_index_number|
      array_of_sentences << array_of_words[starting_index..retrieved_index_number]
      starting_index = retrieved_index_number + 1
    end
    array_of_sentences.count
  end
end
