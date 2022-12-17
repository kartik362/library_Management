class User < ApplicationRecord
    validates :Fname, presence: true
    validates :Lname, presence: true
    validates :Email, presence: true
    validates :Phone, presence: true
    validates :Address, presence: true
    validates :Username, presence: true
    validates :Password, presence: true
    validates :Cnfpassword, presence: true
end
