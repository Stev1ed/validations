class SignUp < ApplicationRecord
    validates :password, confirmation: true
end
