class Blog < ApplicationRecord
	belongs_to :user

	validates :blog, presence: true
end
