require './person'

class Student < Person
    attr_accessor :classroom

    def initialize (classroom, name, age, id, parent_permission="unknown")
        @classroom = classroom
        super(name, age, id, parent_permission)
    end

    def play_hooky
        return "¯\(ツ)/¯"
    end

    def correct_name
        @name
    end
end
