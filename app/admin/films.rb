ActiveAdmin.register Film do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :text, :img, tag_ids: []

  index do
    selectable_column
    id_column
    column :title
    column :tags
    column :updated_at
    column :img
    actions
  end

  show do
    attributes_table do
      row :title
      row :slug
      row :text
      row :img
      row :rating
      row :users_voted
      row :tags
    end
  end

  form do |f|
    f.inputs 'Add/Edit Film' do
      f.input :title
      f.input :text
      f.input :tags, as: :check_boxes
      f.input :img
    end
    actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :text, :rating, :users_voted, :img]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
