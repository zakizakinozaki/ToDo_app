class List < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy

  validates :program, length: { in: 1..255 }
end
