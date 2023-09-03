class Patient < User
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments

  before_create :assign_role

  private

  def assign_role
    self.role = 'patient'
  end
end