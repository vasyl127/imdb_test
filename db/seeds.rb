if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'NbgjGfcc!23',
                    password_confirmation: 'NbgjGfcc!23')
end

categories = %w[Action Comedy Drama Fantasy Horror Mystery Romance
                Thriller Western]

categories.each do |categ|
  Tag.create(title: categ)
end

# (1..50).each do |i|
#   Film.create(title: "Test film name with name ##{i}", text: "Test film name with name ##{i} And moreeee text for testtt" )
# end
