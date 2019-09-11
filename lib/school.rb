# code here!

class School
  attr_accessor :roster

  def initialize name
    #instance props/variables
    @name = name
    @roster = {}
  end

  def add_student name, age
    if !@roster.has_key?(age)
      @roster[age] = []
    else
      @roster[age] << name
    end
  end
end
