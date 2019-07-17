require 'pry'

class String
  def endWith? last
    if self.end_with?(last)
      return true
    end
    false
  end

  def sentence?
    endWith?(".")
  end

  def question?
    endWith?("?")
  end

  def exclamation?
    endWith?("!")
  end

  def count_sentences
    counter = 0
    punctuation = [".", "?", "!"]
    splitString = self.split(" ")
    splitString.each do |strings|
      punctuation.each do |punct|
        if strings.end_with?(punct)
          counter += 1
        end
      end
    end
    counter
  end
end