



  # categories = ['Action', 'Comedy', 'Drama', 'Fantasy', 'Horror', 'Mystery', 'Romance',
  #   'Thriller', 'Western']

  # categories.each do |categ|
  #   Tag.create(title: categ)
  # end
  
  i = 1
  10.times do
    Film.create(title:"Title ##{i}", text:"Text ##{i}")
    i += 1
  end
  # AdminUser.create!(email: 'admin@example.com', password: 'admin123', password_confirmation: 'admin123') if Rails.env.development?