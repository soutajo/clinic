class Doctor < User
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
  belongs_to :category, optional: false

  has_one_attached :avatar

  before_create :assign_role

  private

  def assign_role
    self.role = 'doctor'
  end
end