require('rspec')
require('word')

describe('Word') do
  describe('.view') do
    it('is empty at first') do
    expect(Word.view()).to(eq([]))
    end
  end

  describe ('#save') do
    it('will save user input') do
      input = Word.new('platypus', 'beaked quadruped')
      input.save()
    expect(Word.view()).to(eq([input]))
    end
  end

  describe('.clear') do
    it('clears the array after input') do
      input = Word.new('platypus', 'beaked quadruped')
      input.save()
      Word.clear()
      expect(Word.view()).to(eq([]))
    end
  end

end
