# frozen_string_literal: true

class ModuleSectionPolicy < ApplicationPolicy
  attr_reader :user, :module_section

  def initialize(user, module_section)
    @user = user
    @module_section = module_section
  end

  def create?
    user.admin? || user.root?
  end

  def new?
    user.admin? || user.root?
  end

  def update?
    user.admin? || user.root?
  end

  def edit?
    user.admin? || user.root?
  end

  def destroy?
    user.admin? || user.root?
  end
end
