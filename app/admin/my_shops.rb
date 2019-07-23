ActiveAdmin.register MyShop do
  permit_params :page_name, :page
  form do |f|
    f.inputs 'Page MyShop' do
      f.input :page_name
      f.input :page, as: :quill_editor
    end
    f.actions
  end

end
