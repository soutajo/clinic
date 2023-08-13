# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, 
       :recoverable, :rememberable, :trackable, :validatable

  enum role: {
    patient: 0, doctor: 1, admin: 2
  }

  has_one :profile
end
