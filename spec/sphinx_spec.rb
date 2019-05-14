require 'pry'
require 'sphinx'

describe '#Sphinx' do
  describe '#riddle' do
    it 'returns a riddle' do
      linda = Sphinx.new
      expect(linda.riddle1).to(eq('What gets wetter and wetter the more it dries?'))
    end

    it 'returns a second riddle' do
      linda = Sphinx.new
      expect(linda.riddle2).to(eq('What can travel around the world while staying in a corner?'))
    end

    it 'returns a third riddle' do
      linda = Sphinx.new
      expect(linda.riddle3).to(eq('What gets broken without being held?'))
    end
  end
end
