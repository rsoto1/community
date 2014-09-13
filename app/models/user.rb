class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :unit, presence: true, format: { with: /\A[A-Z]{1}[0-9]{3}\z/,
                                             message: "must be in format: E205" }
end
