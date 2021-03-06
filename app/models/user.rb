class User < ApplicationRecord
    has_secure_password
    has_many :check_lists

    validates :username, :email, uniqueness: :true
    validates :username, :email, :password, :password_confirmation, presence: :true
end
