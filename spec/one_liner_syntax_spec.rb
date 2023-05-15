RSpec.describe 'shorthand syntax' do
  # defining custom subject
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do
    # is_expected is associated with the subject
    it { is_expected.to eq(5) }
  end
end