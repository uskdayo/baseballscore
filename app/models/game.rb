class Game < ApplicationRecord
  belongs_to :user
  has_many :at_bats, dependent: :destroy
end
