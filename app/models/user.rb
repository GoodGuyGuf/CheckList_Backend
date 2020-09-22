class User < ApplicationRecord
    has_secure_password
    has_many :check_lists
end
