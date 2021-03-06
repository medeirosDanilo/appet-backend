child @ads => :records do
  collection @ads, object_root: false
  attributes :id, :title, :pet_type, :neighborhood, :city, :state, :created_at, :updated_at, :picture_url
end

node :_pagination do
  {
    current_page: @ads.current_page,
    count: @ads.count
  }
end