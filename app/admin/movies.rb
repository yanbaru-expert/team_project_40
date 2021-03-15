ActiveAdmin.register Movie do
  permit_params :genre, :title, :url, :text_id
  
  form do |f|
    f.inputs do
      input :genre
      input :title
      input :url
      input :text
    end
    f.actions
  end
end
