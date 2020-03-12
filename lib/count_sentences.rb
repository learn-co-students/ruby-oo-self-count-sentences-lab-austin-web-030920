require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
    # self.split(/\.|\?|\!/).delete_at {|w| w.size < 2}.size
  end
end