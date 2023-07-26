require './person'

class Teacher < Person
    def initialize (specialization, name, age, id, parent_permission="unknown")
        @specialization = specialization
        super(name, age, id, parent_permission)
    end

    def can_use_services?
        return true
    end
end
