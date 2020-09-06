class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attachment :image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :blogs, dependent: :destroy
  has_many :relationships, dependent: :destroy

end
