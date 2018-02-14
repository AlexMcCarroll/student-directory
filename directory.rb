
=begin
def input_students
  puts "Please enter the names, hobbies, DOB of the students"
  puts "To finish, click enter 4 times"

  students = []

  name = gets.chomp
  hobbies = gets.chomp
  dob = gets.chomp

  while !name.empty? do

    students << {name: name, cohort: :november, hobbies: hobbies, dob: dob}
    puts "Now we have #{students.count} students"

    name = gets.chomp
    hobbies = gets.chomp
    dob = gets.chomp
  end

  students

end
=end

students = [
  {name: "Dr. Hannibal Lecter", cohort: :november,
    hobbies: "Cannibalism", dob: "1933"},
  {name: "Darth Vader", cohort: :november,
    hobbies: "Killing Jedi", dob: "42 B.B.Y"},
  {name: "Nurse Ratched", cohort: :november,
    hobbies: "order and efficiency", dob: "1975" }
]
#  {name: "Michael Corleone", cohort: :november},
#  {name: "Alex DeLarge", cohort: :november},
#  {name: "The Wicked Witch of the West", cohort: :november},
#  {name: "Terminator", cohort: :november},
#  {name: "Freddy Krueger", cohort: :november},
#  {name: "The Joker", cohort: :november},
#  {name: "Joffrey Baratheon", cohort: :november},
#  {name: "Norman Bates", cohort: :november}

def print_header
  puts "The Students of Villans Academy"
  puts "-------------"
end

def print_body(names)
  names.each do |x| puts "#{x[:name].center(50)}
    #{x[:cohort].capitalize} cohort
    Hobbies: #{x[:hobbies]}
    DOB: #{x[:dob]}"
    puts ""
  end
end

def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

print_header
print_body(students)
print_footer(students)
