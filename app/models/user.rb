class User < ActiveRecord::Base
    has_many :questions

    validates :username, presence: true,length: { minimum: 4 },  uniqueness: true
    validates :email, presence: true,  uniqueness: true

 end