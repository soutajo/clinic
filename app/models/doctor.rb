class Doctor < User
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
  belongs_to :doctor_category, optional: false

  before_create :assign_role

  private

  def assign_role
    self.role = 'doctor'
  end
end