class Message < ApplicationRecord
  belongs_to :member
  has_one :project_message , dependent: :destroy
  has_one :project, through: :project_message

end
