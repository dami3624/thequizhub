class User < ActiveRecord::Base
	#has_secure_password
	#has_many :quizzes


	
	validates_presence_of :name
	validates_uniqueness_of :email
	validates_presence_of :password
end
