class Card < ApplicationRecord
  belongs_to :list

  validates :name, presence: true, length: { in: 1..255 }
  validates :memo,  length: { maximum: 1000 }
end
