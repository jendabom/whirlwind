def student
  p "Enter the student's name:"
  @student_name = gets.chomp
end

@students = []

def how_many_students
  p "How many Students does your class have?"
  @class_size = gets.chomp.to_i
end

def create_students(_student)
  student_name = @student_name
end

def enter_class_info
  how_many_students
  @class_size.times do
    @students.push(create_students(student))
  end
end

enter_class_info

def make_groups
  @groups = @students.shuffle.each_slice(2).to_a
  if @groups.last.length == 1
    (@groups.first << @groups.last).flatten!
    @groups.pop(1)
  end
  return @groups
end

def print_groups(_make_groups)
  num = 1
  @groups.each do |group|
    if group.length == 2
      p "Group #{num}: #{group[0]}, #{group[1]}"
    else
      p "Group #{num}: #{group[0]}, #{group[1]}, and #{group[2]}"
    end
    num += 1
  end
end

print_groups(make_groups)