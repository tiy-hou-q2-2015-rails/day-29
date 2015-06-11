
10.times do
  user = User.create username: Faker::Internet.user_name, password: "12345678"

end

50.times do
  user = User.all.sample
  created_at = (1..21).to_a.sample.days.ago
  Quotable.create user: user,
                  content: Faker::Company.catch_phrase,
                  created_at: created_at,
                  updated_at: created_at
end
