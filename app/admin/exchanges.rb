ActiveAdmin.register Exchange do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :name, label: "Name"
      f.input :coin_ids, as: :check_boxes, collection: Coin.all
    end
    f.actions
  end
# permit_params :list, :of, :attributes, :on, :model
  permit_params :name, :url, :description, coin_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
