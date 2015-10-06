require 'rails_helper'

describe 'Homepage' do

  before do
    News.create!(title: 'test', body: '1234')
  end

  feature 'display news on homepage' do
    it 'displays on homepage' do
      visit root_path
      expect(page).to have_content('1234')
    end
  end

end


