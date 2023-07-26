class Person
    def initialize (name, age, id, parent_permission="unknown")
        @name = name
        @id = id
        @age = age
    end

    def can_use_services?
        @parent_permission == "yes" || self.of_age?
    end
 
    private
    def of_age?
        @age >= 18
    end    
end 
