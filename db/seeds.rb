

  AdminUser.create!(email: 'admin@example.com', password: 'admin123', password_confirmation: 'admin123') if Rails.env.development?

  categories = ['Action', 'Comedy', 'Drama', 'Fantasy', 'Horror', 'Mystery', 'Romance',
    'Thriller', 'Western']

  categories.each do |categ|
    Tag.create(title: categ)
  end
  
