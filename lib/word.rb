  class Word
    @@dictionary = []

    attr_reader :id
    attr_accessor(:input_word, :input_def1)

    def initialize(attributes)
      @input_word = attributes.fetch(:input_word)
      @input_def1 = attributes.fetch(:input_def1)

      @id = @@dictionary.length + 1
    end

    def self.view()
      @@dictionary
    end

    def save()
      @@dictionary.push(self)
    end

    # def self.clear()
    #   @@dictionary = []
    # end

    def self.find(id)
    item_id = id.to_i()
    @@dictionary.each do |item|
      if item.id == item_id
        return item
      end
    end
  end
  end

  # class Definition
  #   attr_accessor(:input_def2)
  #
  #   def initialize(input_def2)
  #     @input_def2 = input_def2
  #   end
  #
  #   def display()
  #     @input_def2
  #   end
  # end
