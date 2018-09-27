ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
    permit_params :name, :description, :price, :stock, images: []

    form partial: 'form'

    show do
      attributes_table do
        row :name
        row :description
        row :price
        row :stock
        row :images do
            ul do
                product.images.each do |img|
                  li do 
                    image_tag(img)
                  end
                end
               end
        end
      end
    end
  end
