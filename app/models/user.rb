class User < ApplicationRecord
    has_many :likes
    has_many :like_tweets,through: :likes , source: :tweet

    validates :uid, :pass, presence: true
    validates :uid, uniqueness: true
end
