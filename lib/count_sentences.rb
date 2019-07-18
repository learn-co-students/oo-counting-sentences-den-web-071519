require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # binding.pry
    counter = self.split(/[!.?]/).reject {|x| x.to_s.empty?}
    counter.count
  end
end