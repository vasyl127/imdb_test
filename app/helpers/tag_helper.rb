module TagHelper
  def tag_in_use(tag_id)
    Film.joins(:film_tags).where('film_tags.tag_id = ?', tag_id).size
  end
end
