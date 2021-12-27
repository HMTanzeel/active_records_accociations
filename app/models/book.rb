class Book < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates_with Validator
end