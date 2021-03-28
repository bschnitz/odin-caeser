require_relative '../lib/caeser'

describe 'caesar_cipher' do
  before { @cipher = caesar_cipher(string, shift) }

  context 'non empty string' do
    let(:string) { 'Hello Caeser Z' }

    context 'shift is zero' do
      let(:shift) { 0 }

      it 'does not change the string' do
        expect(@cipher).to eq(string)
      end
    end

    context 'shift is 5' do
      let(:shift) { 5 }

      it 'translates the first letter to "M"' do
        expect(@cipher[0]).to eq('M')
      end

      it 'translates the last letter "Z" to "E"' do
        expect(@cipher[-1]).to eq('E')
      end

      it 'translates the second letter "e" to "j"' do
        expect(@cipher[1]).to eq('j')
      end

      it 'the third and fourth letter still equal after translation' do
        expect(@cipher[2]).to eq(@cipher[3])
      end
    end
  end

  context 'empty string' do
    subject { @cipher }
    let(:string) { '' }

    context 'shift is zero' do
      let(:shift) { 0 }

      it { is_expected.to be_empty }
    end

    context 'shift is non-zero' do
      let(:shift) { 7 }

      it { is_expected.to be_empty }
    end
  end
end
