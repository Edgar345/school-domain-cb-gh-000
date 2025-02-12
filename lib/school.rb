# code here!

class School
  attr_accessor :roster

  def initialize name
    #instance props/variables
    @name = name
    @roster = {}
  end

  def add_student name, grade
    if !@roster.has_key?(grade)
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade grade
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end
