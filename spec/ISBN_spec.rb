require_relative '../ISBN.rb'

describe '#isbn13' do
    let(:isbn10_valid) { "0330301624" }
    let(:isbn10_invalid) { "0330304355" }
    let(:isbn13_valid) { "9780316066525" }
    let(:isbn13_invalid) { "9780316066523" }

    it 'checks for validity of isbn10' do
      expect(isbn13(isbn10_valid) { |value| value }).to eql("Valid")
    end

    it 'checks for invalidity of isbn10' do
        expect(isbn13(isbn10_invalid) { |value| value }).to eql("Invalid")
    end

    it 'checks for validity of isbn13' do
        expect(isbn13(isbn13_valid) { |value| value }).to eql("Valid")
    end

    it 'checks for invalidity of isbn13' do
        expect(isbn13(isbn13_invalid) { |value| value }).to eql("Invalid")
    end
end