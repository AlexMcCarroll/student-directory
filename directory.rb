
def input_students
  puts "Please enter the names, cohort, hobbies, DOB of the students"
  puts "To finish, click enter twice"

  students = []

  while true do

  name = gets.chomp
  break if name.empty? == true

  cohort = gets.chomp
  cohort = 'n/a' if cohort.empty? == true

  hobbies = gets.chomp
  hobbies = 'n/a' if hobbies.empty? == true

  dob = gets.chomp
  dob = 'n/a' if dob.empty? == true

  students << {name: name, cohort: cohort, hobbies: hobbies, dob: dob}
  puts "Now we have #{students.count} students"

  end

  students

end

=begin
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
=end

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

def sort_by_cohort(names)
  print "Type in the cohort month you want: "
  cohort_input = gets.chomp
  names.map { |key, value| puts key[:name] if key[:cohort] == cohort_input }
end

def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

students = input_students
print_header
print_body(students)
sort_by_cohort(students)
print_footer(students)
