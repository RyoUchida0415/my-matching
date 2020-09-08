class User < ApplicationRecord
  attachment :image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :blogs, dependent: :destroy
  has_many :relationships, dependent: :destroy

end
