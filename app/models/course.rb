class Course < ApplicationRecord
  has_many :sections

  #before_validation(on: :create) do
   # self.number = number.gsub(/[^0-9]/, "") if attribute_present?("number")
  #end

  validates :name, presence: true

  validates :department, presence: true

  validates :number, presence: true

  validates :credit_hours, presence: true
end
