def grade(score)
  case 
    when 90 <= score && score <= 100 then 'A'
    when 80 <= score && score < 90 then 'B'
    when 70 <= score && score < 80 then 'C'
    when 60 <= score && score <= 70 then 'D'
    else 'F'
  end
end

def get_grade(score1, score2, score3)
  average_score = (score1 + score2 + score3).to_f / 3
  grade(average_score)
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"