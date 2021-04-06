class User < ApplicationRecord
  has_many :lists, dependent: :destroy
  has_many :outputs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, length: { maximum: 20 }
end
