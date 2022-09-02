require '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context '#factorial' do
    it 'number 5 should return 120' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'number 0 should return 1' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'number less than zero should raise error' do
      expect { @solver.factorial(-3) }.to raise_error('Number should not be negative')
    end
  end

  context '#reverse' do
    it ' when word is hello should return olleh' do
      expect(@solver.reverse('hello')).to eq('olleh')
      expect(@solver.reverse('books')).to eq('skoob')
    end
  end

  context '#fizzbuzz' do
    it 'when number divisible by 3' do
      expect(@solver.fizzbuzz(6)).to eq('fizz')
    end

    it 'when number divisible by 5' do
      expect(@solver.fizzbuzz(20)).to eq('buzz')
    end

    it 'when number divisible by 15' do
      expect(@solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'when number not divisible by 3, 5 or 15' do
      expect(@solver.fizzbuzz(2)).to eq('2')
    end
  end
end
