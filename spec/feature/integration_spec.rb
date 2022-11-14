# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a module', type: :feature do
  scenario 'valid inputs' do
    visit new_password_path
    fill_in 'Password', with: '12345'
    click_on 'Save'
    visit new_module_section_path
    fill_in 'Module name', with: 'An incredible module'
    click_on 'Create Module section'
    visit module_sections_path
    expect(page).to have_content('An incredible module')
  end
end

RSpec.describe 'Editing a module', type: :feature do
  scenario 'valid inputs' do
    visit new_password_path
    fill_in 'Password', with: '12345'
    click_on 'Save'
    visit new_module_section_path
    fill_in 'Module name', with: 'An incredible module'
    click_on 'Create Module section'
    visit module_sections_path
    visit edit_module_section_path(module_name: 'An incredible module')
    fill_in 'Module name', with: 'An incredible module module'
    click_on 'Update Module section'
    visit module_sections_path
    expect(page).to have_content('An incredible module module')
  end
end

RSpec.describe 'Creating a page', type: :feature do
  scenario 'valid inputs' do
    visit new_password_path
    fill_in 'Password', with: '12345'
    click_on 'Save'
    visit new_module_section_path
    fill_in 'Module name', with: 'An incredible module'
    click_on 'Create Module section'
    visit new_page_path
    select('1', :from => 'Module')
    fill_in 'Content', with: '22'
    fill_in 'Page name', with: 'TestName'
    fill_in 'Page description', with: 'TestDescription'
    fill_in 'Tag', with: 'TestTag'
    click_on 'Create Page'
    visit pages_path
    expect(page).to have_content('22')
    expect(page).to have_content('Testtag')
  end
end

RSpec.describe 'Edit a page', type: :feature do
  scenario 'valid inputs' do
    visit new_password_path
    fill_in 'Password', with: '12345'
    click_on 'Save'
    visit new_page_path
    fill_in 'Module', with: '22'
    fill_in 'Content', with: '22'
    fill_in 'Page name', with: 'TestName'
    fill_in 'Page description', with: 'TestDescription'
    click_on 'Create Page'
    visit pages_path
    visit edit_page_path(page)
    fill_in 'Module', with: ''
    fill_in 'Module', with: '1'
    fill_in 'Content', with: ''
    fill_in 'Content', with: '1'
    fill_in 'Page name', with: ''
    fill_in 'Page name', with: 'TestName2'
    fill_in 'Page description', with: ''
    fill_in 'Page description', with: 'NewTestDescription'
    fill_in 'Tag', with: 'test tag'
    click_on 'Update Page'
    visit pages_path
    expect(page).to have_content('33')
    expect(page).to have_content('NewTestDescription')
    expect(page).to have_content('Test')
    expect(page).to have_content('Tag')
  end
end

RSpec.describe 'Creating content', type: :feature do
  scenario 'valid inputs' do
    visit new_password_path
    fill_in 'Password', with: '12345'
    click_on 'Save'
    visit new_content_path
    fill_in 'Title', with: 'test'
    fill_in 'Description', with: 'this is a test'
    fill_in 'Content', with: '1'
    fill_in 'Content type', with: 'jpg'
    fill_in 'Content storage link', with: 'test'
    click_on 'Save'
    visit contents_path
    expect(page).to have_content('test')
  end
end

RSpec.describe 'Entering a password', type: :feature do
  scenario 'valid inputs' do
    visit new_password_path
    fill_in 'Password', with: '12345'
    click_on 'Save'
    expect(page).to have_content('Modules')
  end
end
