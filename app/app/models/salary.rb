class Salary < ApplicationRecord
    #validates :wage, numericality: true
    validates :wage, numericality: {only_integer: true}
end
