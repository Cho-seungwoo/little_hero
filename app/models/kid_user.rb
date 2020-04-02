class KidUser < ApplicationRecord
  belongs_to :user

  enum sex: [:male, :female, :unknown]
end
