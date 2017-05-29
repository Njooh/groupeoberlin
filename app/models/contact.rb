class Contact < ApplicationRecord
	validates :name, presence: true
	validates :subject, presence: true
	validates :email, presence: true
	validates :message, presence: true

	before_save { self.message = message.rstrip }
end
