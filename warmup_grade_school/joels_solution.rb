# this was the question: https://gist.github.com/wofockham/241c21478b5d593b7830

class School
  attr_reader :db
  def initialize(school_name)
    @school_name = school_name
    @db = {}
  end

  def add(student_name, grade)
    grade = grade.to_s
    @db[grade] ||= []
    @db[grade] << student_name
  end

  def grade(grade)
    @db[grade.to_s] || []
  end

  def sort
    # first sort the students in each grade
    @db.each do |grade, student|
      student.sort!
    end
    # then sort the grades
    @db.sort
  end

end

# run
# all
# the
# tests

school = School.new("Hazelbrook Public")
puts school
puts school.db

school.add("little billy", 1)
school.add("james", 2)
school.add("hayley", 2)
school.add("lissa", 3)
school.add("mick", 2)
puts school.db

puts school.grade(2)

puts school.sort.inspect