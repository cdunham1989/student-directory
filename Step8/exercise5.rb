def input_students
  puts "Please enter the name of the first student:"
  puts "To finish, just hit return twice."
  students = []
  name =  gets.chomp
  puts "What are your hobbies?"
  hobbies = gets.chomp
  puts "What is your country of birth?"
  country = gets.chomp
  puts "How tall are you in cm?"
  height = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november, hobbies: hobbies, country: country, height: height }
    puts "Now we have #{students.count} students"
    puts "Please enter the next student:"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
