# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a page', type: :feature do
  scenario 'valid inputs' do
    visit new_page_path
    fill_in 'Page', with: '22'
    fill_in 'Module', with: '22'
    fill_in 'Content', with: '22'
    fill_in 'Page name', with: 'TestName'
    fill_in 'Page description', with: 'TestDescription'
    click_on 'Create Page'
    visit pages_path
    expect(page).to have_content('22')
  end
end