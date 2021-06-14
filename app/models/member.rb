class Member < ApplicationRecord
    has_secure_password
    has_many :messages , dependent: :destroy

    def registered?
        registered
    end
end
