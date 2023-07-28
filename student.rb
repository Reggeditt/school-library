require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom1, age, name, parent_permmission: true)
    super(age, name, 'Student', parent_permmission: parent_permmission)
    @classroom = classroom(classroom1)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
