class User < ApplicationRecord

	#has_many :articles, dependent: :destroy
	validates :name,	presence: true,
                     	length: { minimum: 3 } 
    validates :email,	presence: true
    validates :password,	presence: true
    validates :confirm_password,	presence: true
	
end
