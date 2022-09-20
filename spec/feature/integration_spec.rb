# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a module', type: :feature do
  scenario 'valid inputs' do
    visit new_module_section_path
    fill_in 'Module', with: '1234'
    fill_in 'Module name', with: 'An incredible module'
    click_on 'Create Module section'
    visit module_sections_path
    expect(page).to have_content('An incredible module')
  end
end




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

