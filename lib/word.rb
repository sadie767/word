class Word

  @@dictionary = []

  attr_accessor(:input_word, :input_def1)

  def initialize(input_word, input_def1)
    @input_word = input_word
    @input_def1 = input_def1
  end

  def self.view()
    @@dictionary
  end

  def save()
    @@dictionary.push(self)
  end

  def self.clear()
    @@dictionary = []
  end
end
