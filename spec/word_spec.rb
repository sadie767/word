require('rspec')
require('word')

  describe('Word') do


    describe ('#save') do
      it('will save user input') do
        new_input = Word.new({:input_word=> 'platypus', :input_def1=> 'beaked quadruped'})
        new_input.save()
      expect(Word.view()).to(eq([new_input]))
      end
    end

    describe(".find") do
    it("finds an item based on its id") do
      new_input2 = Word.new({:input_word=> "platypus", :input_def1=> "beaked quadruped"})
      new_input2.save()
      expect(Word.find(2)).to(eq(new_input2))
    end
  end

end
