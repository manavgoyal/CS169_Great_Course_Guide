class User < ActiveRecord::Base

	validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :uid, presence: true, uniqueness: true
	has_many :user_courses

	def self.all_emails
		emails = []
		self.all.each do |user|
			emails << user.email
		end
		return emails
	end
end
    