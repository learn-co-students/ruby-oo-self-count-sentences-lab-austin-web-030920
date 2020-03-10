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
    split_sentence = self.split(/[.?!!]/)
    split_sentence.each { |sentence| 
      if sentence.length < 2
        split_sentence.delete(sentence)
      end 
    }
    return split_sentence.length
  end
end