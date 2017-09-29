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

    it 'adds two positive integers' do
      expect(calculator.add(2,3)).to eq(5)
    end

    it 'adds two positive floats' do
      expect(calculator.add(2.5,3.5)).to eq(6)
    end

    it 'handles negative integers' do
      expect(calculator.add(-2,3)).to eq(1)
    end

    it 'handles negative floats' do
      expect(calculator.add(-2.5,3.5)).to eq(1)
    end

    it 'returns a float when adding an integer and a float' do
      expect(calculator.add(4,3.125)).to eq(7.125)
    end
  end #add

  describe '#subtract' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.subtract(2)}.to raise_error(ArgumentError)
    end

    context "when both numbers are integers" do
      it 'subtracts the second integer from the first integer' do
        expect(calculator.subtract(2,3)).to eq(-1)
      end

      it 'handles negative integers' do
        expect(calculator.subtract(-2,3)).to eq(-5)
      end
    end

    context "when both numbers are floats" do
      it 'subtracts the second float from the first float' do
        expect(calculator.subtract(2.5,3.5)).to eq(-1)
      end

      it 'handles negative floats' do
        expect(calculator.subtract(-2.5,3.5)).to eq(-6)
      end
    end

    context "when numbers are and integer and a float" do
      it 'returns a float' do
        expect(calculator.subtract(6,3.5)).to eq(2.5)
      end

      it 'handles negative floats' do
        expect(calculator.subtract(-6,3.5)).to eq(-9.5)
      end
    end
  end #subtract

  describe '#multiply' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.multiply(2)}.to raise_error(ArgumentError)
    end

    it 'multiplies two numbers' do
      expect(calculator.multiply(2,3)).to eq(6)
    end
  end #multiply

  describe '#divide' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.divide(2)}.to raise_error(ArgumentError)
    end

    it 'raises an error if the second number is 0' do
      expect{calculator.divide(2,0)}.to raise_error(ArgumentError)
    end

    it 'divides the first number by the second number' do
      expect(calculator.divide(10,2)).to eq(5)
      expect(calculator.divide(1,8)).to eq(0.125)
    end
  end #divide

  describe '#pow' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.pow(2)}.to raise_error(ArgumentError)
    end

    it 'raises the first number to the power of the second number' do
      expect(calculator.pow(5,2)).to eq(25)
    end
  end #pow

  describe '#sqrt' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.sqrt(2,1)}.to raise_error(ArgumentError)
    end

    it 'returns the square route of the given number' do
      expect(calculator.sqrt(25)).to eq(5)
    end

    it 'raises an error if the number is < 0' do
      expect{calculator.sqrt(-1)}.to raise_error(ArgumentError)
    end
  end #sqrt

  describe '#memory' do
    it 'returns the item in the memory'

    it 'resets the memory to nil' do
      expect(calculator.memory).to eq(nil)
    end
  end #memory

  describe '#output' do
    it 'raises an error with an incorrect number of arguments' do
      expect{calculator.output(2,3)}.to raise_error(ArgumentError)
    end

    it 'outputs the response' do
      input = (1 + 3)
      expect(calculator.output(input)).to eq(4)
    end
  end #output

end #Calculator