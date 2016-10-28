class SignedDriver < ActiveRecord::Base
  belongs_to :team
  belongs_to :driver

end
