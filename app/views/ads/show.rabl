object @ad
attributes :id, :title, :pet_name, :pet_type, :weight, :neighborhood, :city, :state, :size, :picture_url

child(:user) do
  attributes :id, :name, :phone_number
end