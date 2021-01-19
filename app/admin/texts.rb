ActiveAdmin.register Text do
  permit_params :genre, :content, :title

  index do
    selectable_column
    id_column
    column :genre
    column :title
    column :content
    actions
  end

  filter :genre
  filter :title
  filter :content

  form do |f|
    f.inputs do
      f.input :genre
      f.input :title
      f.input :content
    end
    f.actions
  end
end
