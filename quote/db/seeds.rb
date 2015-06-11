
10.times do
  user = User.create username: Faker::Internet.user_name, password: "12345678"

  5.times do
    Quotable.create user: user, content: Faker::Company.catch_phrase 
  end

end
