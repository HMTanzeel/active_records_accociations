class Book < ApplicationRecord
    # validates :name, presence: { message: 'must be given & unique'}, uniqueness: true
    validates_each :name do |record, attr, value|
    record.errors.add(attr, 'start with upper case') if value =~ /\A[[:lower:]]/
    end
    validates_with Validator
    validates :name, length: { is: 5 }, allow_blank: true
end