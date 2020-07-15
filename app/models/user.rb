class User < ApplicationRecord
  has_many :lists, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by(email: "test@gmail.com") do |user|
      user.password = test5432
    end
  end

  validates :name, presence: true, length: { maximum: 20 }
end
