class Post < ApplicationRecord
    validates :url, presence: true, length:{maximum: 100, 
                                            message: "You can only post links up to 100 characters"}

    belongs_to :user
    has_many :comments

end
