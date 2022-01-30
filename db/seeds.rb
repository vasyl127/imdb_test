



  categories = ['Action', 'Comedy', 'Drama', 'Fantasy', 'Horror', 'Mystery', 'Romance',
    'Thriller', 'Western']

  categories.each do |categ|
    Tag.create(title: categ)
  end
  
  # i = 1
  # 10.times do
  #   Film.create(title:"Title ##{i}", text:"Text ##{i}", ratings:"##{i}", users_voted:i)
  #   i += 1
  # end