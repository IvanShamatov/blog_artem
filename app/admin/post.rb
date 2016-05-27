ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :user_id, :title, :headline, :body, :user, :image

  form do |f|
    f.inputs do 
      f.input :user, as: :select, collection: User.all
      f.input :title
      f.input :headline
      f.input :body
      f.input :image
    end
    f.actions
  end

end
