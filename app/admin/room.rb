ActiveAdmin.register Room do

  permit_params :name, :rate, :short_description, :size, :bed, :occupancy, :long_description, :image

  index do
    selectable_column
    id_column
    column :name
    column :rate
    column :short_description
    actions
  end

  form title: 'A custom title' do |f|
    inputs 'Details' do
      input :name
      input :rate
      input :short_description
      input :size
      input :bed
      input :occupancy
    end
    inputs 'Description', :long_description
    input :image
    actions
  end
end