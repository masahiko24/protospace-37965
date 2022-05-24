class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :title, presence: true
  validates :catch_copy, presence: true, unless: :was_attached?
  validates :concept, presence: true, unless: :was_attached?
  validates :image, presence: true, unless: :was_attached?

end

