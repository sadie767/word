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

    def self.find(id)
    item_id = id.to_i()
      @@dictionary.each do |item|
        if item.id == item_id
        return item
      end
      end
    end

    def add_def(input_def2)
      @@dictionary.push(input_def2)
    end

    def delete()
      @@dictionary = []
    end

  end
