ActiveAdmin.register Weather do
  permit_params :city_number, :city, :text, :inserted_at
end
