class Member < ApplicationRecord
    has_secure_password

    def registered?
        registered
    end
end
