if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'admin123',
                    password_confirmation: 'admin123')
end

categories = %w[Action Comedy Drama Fantasy Horror Mystery Romance
                Thriller Western]

categories.each do |categ|
  Tag.create(title: categ)
end
