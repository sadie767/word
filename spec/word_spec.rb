require('rspec')
require('word')

  describe('Word') do
    describe('.view') do
      it('is empty at first') do
      expect(Word.view()).to(eq([]))
    end
  end
end
