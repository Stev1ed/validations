class Login < ApplicationRecord
    validates :username, uniqueness: true
end
