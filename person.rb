require './Nameable'
class Person < Nameable
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

person = Person.new('Maximilianus', 22, 'some_id')
puts person.correct_name

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
