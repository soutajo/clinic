class Admin < ApplicationRecord
  before_create :assign_role

  private

  def assign_role
    self.role = 'admin'
  end
end
