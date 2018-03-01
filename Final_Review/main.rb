load 'group.rb'
load 'student.rb'

study_groups = Group.new
study_groups.enter_class_info
study_groups.make_groups
study_groups.print_groups(@groups)