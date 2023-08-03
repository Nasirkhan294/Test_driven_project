require_relative '../solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(Solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for positive integers' do
      expect(Solver.factorial(5)).to eq(120)
      expect(Solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an exception for negative integers' do
      expect { Solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end
  describe '#reverse' do
    it 'reverses the given string' do
      expect(Solver.reverse('hello')).to eq('olleh')
      expect(Solver.reverse('ruby')).to eq('ybur')
    end
  end
end
