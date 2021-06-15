class Member < ApplicationRecord
    has_secure_password
    has_many :messages , dependent: :destroy
    has_many :project_members
    has_many :projects , through: :project_members
    

    def registered?
        registered
    end
end
