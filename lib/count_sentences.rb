require 'pry'

class String
#define to return true if string calling ends in . false if not
  def sentence?
    if self.end_with?(".")
      true 
    else 
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    self.split(/[.!?] /).count
  end
end
 