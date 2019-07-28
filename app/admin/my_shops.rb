ActiveAdmin.register MyShop do

  permit_params :page_name, :page

  form do |f|
    f.inputs 'Page MyShop' do
      f.input :page_name, :as => :select, :collection => MyShop::VALID_NAMES
      f.input :page, as: :quill_editor, input_html: {data: {options: {modules: {toolbar: [['bold', 'italic', 'underline'],['image'], ['link']]},  theme: 'snow'}}}
    end
    f.actions
  end

end
