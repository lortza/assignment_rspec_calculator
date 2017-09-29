require 'calculator'

describe Calculator do

  let(:calculator){Calculator.new}

  describe '#initialize' do
    it 'gives you a new calculator' do
      expect(calculator).to be_a(Calculator)
    end

    it 'has nothing in the memory' do
      expect(calculator.memory).to eq(nil)
    end

    it 'is not in string format' do
      expect(calculator.instance_variable_get(:@stringify)).to eq(false)
    end
  end

  describe '#add' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.add(2)}.to raise_error(ArgumentError)
    end

    it 'adds two numbers' do
      expect(calculator.add(2,3)).to eq(5)
      expect(calculator.add(-2,3)).to eq(1)
      expect(calculator.add(2,-3)).to eq(-1)
      expect(calculator.add(0,2)).to eq(2)
    end
  end #add

  describe '#subtract' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.subtract(2)}.to raise_error(ArgumentError)
    end

    it 'subtracts the second number from the first number'
  end #subtract

  describe '#multiply' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.multiply(2)}.to raise_error(ArgumentError)
    end

    it 'multiplies two numbers'
  end #multiply

  describe '#divide' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.divide(2)}.to raise_error(ArgumentError)
    end

    it 'raises an error if the second number is 0'
    it 'divides the first number by the second number'
  end #divide

  describe '#pow' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.pow(2)}.to raise_error(ArgumentError)
    end

    it 'raises the first number to the power of the second number'
  end #pow

  describe '#sqrt' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.sqrt(2,1)}.to raise_error(ArgumentError)
    end
    it 'returns the square route of the given number'
    it 'raises an error if the number is < 0'
  end #sqrt

  describe '#memory' do
    it 'returns the item in the memory'
    it 'resets the memory to nil'
  end #memory

  describe '#output' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.output(2,3)}.to raise_error(ArgumentError)
    end
    it 'outputs the response'
  end #output

end #Calculator