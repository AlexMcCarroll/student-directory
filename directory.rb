
def input_students
  puts "Please enter the names, cohort, hobbies, DOB of the students"
  puts "To finish, click enter twice"

  students = []

  while true do

  name = gets.strip
  break if name.empty? == true

  cohort = gets.strip
  cohort = 'n/a' if cohort.empty? == true

  hobbies = gets.strip
  hobbies = 'n/a' if hobbies.empty? == true

  dob = gets.strip
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
  if names.count == 0
    puts "There are no students!"
  elsif names.count == 1
    puts "Overall we have #{names.count} great student"
  elsif
    puts "Overall we have #{names.count} great students"
  end
end

def interactive_menu
  students = []
  loop do
  puts "1. Input the students: "
  puts "2. Show the students: "
  puts "9. Exit"
  # 2. read the input and save it into a variable
  selection = gets.chomp
  # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print_body(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you meant, try again..."
    end
  end
end

interactive_menu
