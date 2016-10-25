ActiveAdmin.register Prediction do

  index do
    column 'Prediction By', :user_id do |uid|
      uid.user.email
    end
    column 'First Position', :first
    column 'Second Position', :second
    column 'Third Position', :third
    column 'Prediction Time', :created_at
    actions
  end
end
