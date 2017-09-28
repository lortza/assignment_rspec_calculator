require 'calculator'

describe Calculator do

  let(:calculator){Calculator.new}

  describe '#initialize' do
    it 'gives you a new calculator'
    it 'has nothing in the memory'
    it 'is not in string format'
  end

  describe '#add' do
    it 'takes only 2 arguments'
    it 'adds two numbers'
  end #add

  describe '#subtract' do
    it 'takes only 2 arguments'
    it 'subtracts the second number from the first number'
  end #subtract

  describe '#multiply' do
    it 'takes only 2 arguments'
    it 'multiplies two numbers'
  end #multiply

  describe '#divide' do
    it 'takes only 2 arguments'
    it 'divides the first number by the second number'
  end #divide

  describe '#pow' do
    it 'takes only 2 arguments'
    it 'raises the first number to the power of the second number'
  end #pow

  describe '#sqrt' do
    it 'takes only 1 argument'
    it 'returns the square route of the given number'
    it 'raises an error if the number is < 0'
  end #sqrt

  describe '#memory' do
    it 'returns the item in the memory'
    it 'resets the memory to nil'
  end #memory

  describe '#output' do
    it 'takes only 1 argument'
    it 'outputs the response'
  end #output

end #Calculator