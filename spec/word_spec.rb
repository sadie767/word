require('rspec')
require('word')

  describe('Word') do
  #   before() do
  #     Word.clear()
  #   end
    describe('.view') do
      it('is empty at first') do
      expect(Word.view()).to(eq([]))
      end
    end

    describe ('#save') do
      it('will save user input') do
        new_input = Word.new('platypus', 'beaked quadruped')
        new_input.save()
      expect(Word.view()).to(eq([new_input]))
      end
    end

    describe(".find") do
    it("finds an item based on its id") do
      new_input = Word.new("platypus")
      new_input.save()
      new_input2 = Word.new("Pegosaurus")
      new_input2.save()
      expect(Word.find(1)).to(eq(new_input))
      expect(Word.find(2)).to(eq(new_input2))
    end
  end

end
