ActiveAdmin.register Race do
  permit_params :race_name, :track, :start_time, :race_date, :prediction_start
  scope "Active Race", :active

  index do
    column "GP Name", :race_name
    column "Track", :track
    column "Lights Out / Prediction Close", :start_time
    actions
  end

end
