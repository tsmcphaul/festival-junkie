class User < ApplicationRecord
    has_secure_password

    has_many :comments
    has_many :festivals, through: :comments

    validates :username, presence: :true, uniqueness: :true
    validates :password, presence: :true
end
