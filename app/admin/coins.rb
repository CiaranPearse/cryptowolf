ActiveAdmin.register Coin do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

  form html: { multipart: true } do |f|
    f.inputs do
      f.input :name, label: "Name"
      f.input :symbol, label: "Symbol"
      f.input :description, label: "Description"
      f.input :url, label: "URL"
      f.input :github, label: "Github"
      f.input :whitepaper, label: "Whitepaper"
      f.input :telegram, label: "Telegram"
      f.input :discord, label: "Discord"
      f.input :logo, label: "Logo path"
      f.input :exchange_ids, label: "Exchanges", as: :check_boxes, collection: Exchange.all
    end
    f.actions
  end
  permit_params :name, :symbol, :description, :url, :github, :whitepaper, :telegram, :discord, :logo, exchange_ids: []

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
