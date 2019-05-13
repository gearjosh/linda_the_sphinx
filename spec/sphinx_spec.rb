describe '#Sphinx' do
  describe '#riddle' do
    it 'returns a riddle' do
      linda = Sphinx.new
      expect(linda.riddle).to(eq('Who is your daddy and what does he do?'))
    end
  end
end
