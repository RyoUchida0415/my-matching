class User < ApplicationRecord
<<<<<<< HEAD
=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
>>>>>>> a6f97cf559db74f324d0664171ea5a5194d8c456
  attachment :image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :blogs, dependent: :destroy
  has_many :relationships, dependent: :destroy

end
