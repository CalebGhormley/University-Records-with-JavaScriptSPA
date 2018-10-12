class Section < ApplicationRecord
  belongs_to :course
  has_many :enrollments
  has_many :students, through: :enrollments

  validates :semester, presence: true

  validates :number, presence: true

  validates :room_number, presence: true

  def details
    "#{course.name} #{number} #{semester}"
  end
end
