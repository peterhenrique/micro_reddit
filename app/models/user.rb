class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: {in: 4..10}
    validates :password, presence: true, length: {in: 4..10}

    has_many :posts
    has_many :comments
end
