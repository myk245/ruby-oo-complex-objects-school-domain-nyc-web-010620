require 'pry'

class School
    attr_accessor :roster, :student_name, :grade, :school_name  

    def initialize(name)
        @name = name 
        @roster = {}
        # @roster = Hash.new {|roster, grade| roster[grade] = Array.new}  
    end 

    def add_student(student_name, grade)
        # self.roster[grade] << student_name

    #    binding.pry
        if @roster[grade]
            @roster[grade] << student_name
        else 
            @roster[grade] = []
            @roster[grade] << student_name
        end 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        @roster.each do |grade, student_name|
            student_name.sort!
        # self.roster.each do |k, v|
        #     v.sort!
        end 

        #self.roster 
        @roster
    end 

end 

