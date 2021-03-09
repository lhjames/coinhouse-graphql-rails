class Meeting < ApplicationRecord
  belongs_to :user

  validates :attendants, presence: true, length: { maximum: 2 }
end
