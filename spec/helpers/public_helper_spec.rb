require 'rails_helper'
RSpec.describe PublicHelper, type: :helper do
  describe '.next_meetup' do
    it 'finds the next first tuesday of the month' do
      allow(DateTime).to receive(:now).and_return(DateTime.parse('13-02-2016'))

      expect(next_meetup).to eq('01 Mar 2016')
    end

    it 'is able to find if first tuesday hasnt been yet of this month' do
      allow(DateTime).to receive(:now).and_return(DateTime.parse('01-02-2016'))

      expect(next_meetup).to eq('02 Feb 2016')
    end
  end
end
