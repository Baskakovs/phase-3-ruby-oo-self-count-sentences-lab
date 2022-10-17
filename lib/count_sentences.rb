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
    
    sentences = self.split(/[.?!]/)
    sentences.map do |sentence|
      sentences.delete(sentence) if sentence == ""
    end
    return sentences.length
  end
end
