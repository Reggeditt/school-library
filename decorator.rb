require './nameable'
require './person'
class Decorator < Nameable
    def initialize(nameable)
        @nameable = nameable
    end

    def correct_name
        @nameable.correct_name
    end
end
  