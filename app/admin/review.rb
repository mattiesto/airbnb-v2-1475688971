ActiveAdmin.register Review do

 permit_params :content, :user_id, :rating, :booking_id, :listing_id, :accuracy_rating, :communication_rating, :cleanliness_rating, :location_rating, :check_in_rating, :value_rating

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
