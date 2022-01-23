class Admin < ApplicationRecord

    # lookup the has_secure_password that abstract the below
    # auto implement a password and password confirmation

    # this + is like a setter method
    # :: namespace resolution operator
    def password=(new_password)
        salt = BCrypt::Engine::generate_salt
        hashed = BCrypt::Engine::hash_secret(new_password, salt)
        self.password_digest = salt + hashed
    end

    def authenticate(password)
        # generate_salt are always 29 chars long
        salt = self.password_digest[0..28]
        hashed = BCrypt::Engine::hash_secret(password, salt)
        return nil unless (salt + hashed) == self.password_digest
    end

end
