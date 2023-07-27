require './student'

class Classroom
    attr_accessor :label
  
    def initialize(label)
      @label = label
      @students = [] # We'll store the students in an array
    end
  
    def add_student(student)
      @students << student
      student.classroom = self
    end
  
    def students
      @students
    end
  end
  