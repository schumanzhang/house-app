class Admin < ApplicationRecord
    validates :username, length: { minimum: 5 }

    # lookup the has_secure_password that abstract the below
    # auto implement a password and password confirmation

    # this + is like a setter method
    # :: namespace resolution operator
    def password=(new_password)
        salt = BCrypt::Engine::generate_salt
        hashed = BCrypt::Engine::hash_secret(new_password, salt)
        self.password_digest = salt + hashed
    end

    def check_admin(password)
        # generate_salt are always 29 chars long
        puts "check_admin"
        puts password
        salt = self.password_digest[0..28]

        puts salt
        hashed = BCrypt::Engine::hash_secret(password, salt)

        puts salt + hashed
        puts self.password_digest
        return (salt + hashed) == self.password_digest
    end

end
