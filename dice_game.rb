p1_round_won = 0
p2_round_won = 0

while p1_round_won < 3 || p2_round_won < 3 do
  p1_score = 0
  p2_score = 0
  rolls = 0

  while rolls < 3 do
    p1_score += rand(7);
    p2_score += rand(7);
    rolls += 1;
  end

  if p1_score > p2_score
     p1_round_won += 1
  else
    p2_round_won += 1
  end
end

if p1_round_won > p2_round_won
  puts true
else
  puts false
end

