class Word

  @@dictionary = []

  def initialize(input_word, input_def1, input_def2)
    @input_word = input_word
    @input_def1 = input_def1
    @input_def2 = input_def2
  end

  def self.view
    @@dictionary
  end

end
