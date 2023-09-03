class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  enum :status, { opened: 0, closed: 1}
end
