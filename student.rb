require './person'

class Student < Person
    def initialize (classroom, name, age, id, parent_permission="unknown")
        @classroom = classroom
        super(name, age, id, parent_permission)
    end

    def play_hooky
        return "¯\(ツ)/¯"
    end
end
