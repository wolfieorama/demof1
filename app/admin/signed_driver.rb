ActiveAdmin.register SignedDriver do
  permit_params :team_id, :driver_id

  index do
    column "Driver", :driver_id do |did|
      did.driver.driver_name
    end
    column "Team", :team_id do |tid|
      tid.team.team_name
    end
    actions
  end

  form do |f|
    f.input :team, as: :select2

    f.input :driver, as: :select2
    actions
  end

end
