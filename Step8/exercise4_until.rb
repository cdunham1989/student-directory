def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit return twice."
  students = []
  name =  gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  index = 0
  until index >= students.length
    student = students[index]
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
    index += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
