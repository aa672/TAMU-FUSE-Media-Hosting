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

RSpec.describe 'Editing a module', type: :feature do
  given!(:module_section) {module_section.create!(module_id: 1234, module_name: 'An incredible module')}
  
  scenario 'valid inputs' do

    visit module_sections_path
    visit edit_module_section_path(@module_section)
    fill_in 'Module', with: '1234'
    fill_in 'Module name', with: 'An incredible module module'
    click_on 'Update Module section'
    visit module_sections_path
    expect(page).to have_content('An incredible module module')
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

RSpec.describe 'Edit a page', type: :feature do
  scenario 'valid inputs' do
    visit new_page_path
    fill_in 'Page', with: '22'
    fill_in 'Module', with: '22'
    fill_in 'Content', with: '22'
    fill_in 'Page name', with: 'TestName'
    fill_in 'Page description', with: 'TestDescription'
    click_on 'Create Page'
    visit pages_path
    visit edit_page_path(page)
    fill_in 'Page', with: ''
    fill_in 'Page', with: '33'
    fill_in 'Module', with: ''
    fill_in 'Module', with: '33'
    fill_in 'Content', with: ''
    fill_in 'Content', with: '33'
    fill_in 'Page name', with: ''
    fill_in 'Page name', with: 'TestName2'
    fill_in 'Page description', with: ''
    fill_in 'Page description', with: 'NewTestDescription'
    click_on 'Update Page'
    visit pages_path
    expect(page).to have_content('33')
  end
end
