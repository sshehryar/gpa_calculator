def inp
    return gets.chomp
end

puts "This is a Douchebag GPA calculator"

subjects = 0

total_crd = 0
gpa_score = 0
grades = {"A+" => 4, "A" =>3.7 , "A-" => 3.6,"B+" =>3.5 , "B" => 3 , "B-" => 2.9 , "C+" => 2.5 , "C" => 2, "D+" => 1.5 , "D" => 1, "F" => 0}  
while subjects == 0
    print "Enter The number of subjects: "
subjects = inp.to_i
subjects.times do |x|
    puts "Subject #{x+1}\n================"
    
    value = 0.0
    while value == 0.0
        print "Enter Grade:  "
        subject_score = inp.upcase
        value = grades[subject_score].to_f
    end
        
    
    print "Enter Credit Hours: "
    crd_hrs = inp.to_f
    total_crd = total_crd+crd_hrs
    gpa_score = (gpa_score + (value * crd_hrs)).to_f
    
    puts ""
 end
end 
print "Total score is: #{gpa_score} & the number of credit hours is: #{total_crd} "
gpa = gpa_score / total_crd
print " GPA: #{gpa}"



    