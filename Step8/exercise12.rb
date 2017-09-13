def input_students

  students = []

  months = ["January", "February", "March", "April", "May", "June", "July",
            "August", "September", "October", "November", "December"]

  loop do

    name = ""
    cohort = ""

    puts "Please enter the name of the student"
    puts "To finish, type end."
    name = gets.gsub(/\n/, "").downcase
    name = "default" if name == ""
    break if name == "end"

    loop do
      puts "What cohort are you in?"
      cohort = gets.gsub(/\n/, "")
      puts "Please enter a valid cohort:" if !months.include? cohort
      break if months.include? cohort
    end

    students << {name: name.capitalize.to_sym, cohort: cohort.to_sym}
    puts "Now we have #{students.count} student" if students.count == 1
    puts "Now we have #{students.count} students" if students.count != 1

  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great student" if students.count == 1
  puts "Overall, we have #{students.count} great students" if students.count != 1
end

students = input_students

if students.count >=1
  print_header
  print(students.sort_by { |hsh| hsh[:cohort]})
  print_footer(students)
else
  puts "There are no students."
end
