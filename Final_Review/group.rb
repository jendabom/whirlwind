class Group
  def how_many_students
    p "How many Students does your class have?"
    @class_size = gets.chomp.to_i
  end

  def enter_class_info
    @students = []
    how_many_students
    @class_size.times do
      @students.push(Student.new.get_student)
    end
    return @students
  end

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
end