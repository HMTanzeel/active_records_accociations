class Book < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates_each :name do |record, attr, value|
    record.errors.add(attr, 'start with upper case') if value =~ /\A[[:lower:]]/
    end
    validates_with Validator
end