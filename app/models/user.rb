class User < ApplicationRecord
 VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{8,32}\z/
  validates :password, presence: true, 
            format: { with: VALID_PASSWORD_REGEX}
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,presence:true,
  format:{ with: VALID_EMAIL_REGEX}
  
   validates :name, presence: true, length: { maximum: 15 }
  
   has_secure_password
   has_many :topics
   has_many :favorites
   has_many :favorite_topics, through: :favorites, source: 'topic'
   has_many :comments
end
