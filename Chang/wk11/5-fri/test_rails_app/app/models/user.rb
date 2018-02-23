class User < ApplicationRecord
	validates :name, presence: true
	validates :password, length: { minimum: 8}, on: :create
	has_secure_password
end
