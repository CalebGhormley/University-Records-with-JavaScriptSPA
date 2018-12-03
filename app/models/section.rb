class Section < ApplicationRecord
  belongs_to :course
  has_many :enrollments
  has_many :students, through: :enrollments

  validates_presence_of :semester, :number, :room_number

  def details
    "#{course.name}, Section #{number}, #{semester}"
  end

end
