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
    self.split(/[.!?]/).map do |x|
      !(x.match(/\w+/).nil?).reject do |x|
        x == false
      end
    end.size
  end

end
