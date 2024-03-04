ActiveAdmin.register Product do
    permit_params :product_name, :category_id
  
    index do
      selectable_column
      id_column
      column :product_name
      actions
    end
  
    form do |f|
      f.inputs do
        f.input :product_name
      end
      f.actions
    end
end