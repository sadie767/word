require('rspec')
require('word')



describe('Word') do
  describe('.view') do
    it('is empty at first') do
    expect(Word.view()).to(eq([]))
    end
  end

  describe('#initialize') do
   it('creates a new word and its definition') do
     word = Word.new({:input_word=> 'platypus', :input_def1=> 'beaked quadruped', :definitions=> nil})
     expect(word.input_word).to(eq('platypus'))
   end
 end

  describe('#save') do
    it('will save user input') do
    new_input = Word.new({:input_word=> 'platypus', :input_def1=> 'beaked quadruped', :definitions=> nil})
    new_input.save()
    expect(Word.view()).to(eq([new_input]))
    end
  end

  describe(".find") do
    it("finds an item based on its id") do
    new_input2 = Word.new({:input_word=> "platypus", :input_def1=> "beaked quadruped", :definitions=> nil})
    new_input2.save()
    expect(Word.find(2)).to(eq(new_input2))
    end
  end

  describe('#add_def') do
    it('creates an additional definition') do
      new_input3 = Word.new({:input_word=> "platypus", :input_def1=> "beaked quadruped", :definitions=> []})
      new_input3.add_def('web footed')
      expect(new_input3.definitions).to(eq(['web footed']))
    end
  end

  describe('#delete') do
    it('deletes the array') do
      new_input4 = Word.new({:input_word => 'platypus', :input_def1 => 'beaked quadruped', :definitions=> nil})
      new_input4.save()
      new_input4.delete()
      expect(new_input4.delete).to(eq([]))
    end
  end

  describe('#show_def') do
    it('show multiple definitions of one word') do
    new_input3 = Word.new({:input_word=> "platypus", :input_def1=> "beaked quadruped", :definitions=> []})
    new_input3.add_def('web footed')
    expect(new_input3.show_def()).to(eq(['web footed']))
    end
  end

end
