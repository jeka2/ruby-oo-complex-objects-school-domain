# code here!
class School
    attr_reader :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new
    end

    def add_student(name, grade)
        @roster[grade] = [] unless @roster[grade].kind_of?(Array)
        @roster[grade] << name
    end 

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = Hash.new
        @roster.each do |grade, students|
            sorted_hash[grade] = students.sort 
        end
        sorted_hash
    end
end 