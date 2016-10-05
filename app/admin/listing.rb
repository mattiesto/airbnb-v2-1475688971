ActiveAdmin.register Listing do

 permit_params :title, :room_or_home, :description, :number_of_rooms, :number_of_bathrooms, :number_of_beds, :max_occupants, :city, :neighborhood, :policies, :default_price, :host_id

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


end
