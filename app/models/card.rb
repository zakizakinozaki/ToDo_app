class Card < ApplicationRecord
  belongs_to :list
  #acts_as_list scope: :list

  validates :task, length: { in: 1..255 }
  validates :memo,  length: { maximum: 1000 }
end
