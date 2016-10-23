ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  index do
    column "Email address", :email
    column "Join Date", :created_at
    column "Is super admin", :super_admin
    actions
  end

  form do |f|
    f.inputs 'User Details' do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :super_admin, :label => 'Super Administrator'
    end
    actions
  end
end
