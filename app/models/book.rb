class Book < ApplicationRecord
    has_many :comments
    validates :name , :author, presence: true
end
