# location: spec/unit/unit_spec.rb
require 'rails_helper'

# Testing acceptance criteria for the creation of pages
RSpec.describe Page, type: :model do
  subject do
    described_class.new(page_id: '22', module_id: '22', content_id: '22', page_name: 'name', page_description: 'description here')
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a page id' do
    subject.page_id = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a module id' do
    subject.module_id = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a content id' do
    subject.content_id = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a page name' do
    subject.page_name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a page description' do
    subject.page_description = nil
    expect(subject).not_to be_valid
  end
end

# Testing acceptance criteria for the creation of modules
RSpec.describe ModuleSection, type: :model do
  subject do
    described_class.new(module_id: '22', module_name: 'Mod Name')
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a module id' do
    subject.module_id = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a module name' do
    subject.module_name = nil
    expect(subject).not_to be_valid
  end
end