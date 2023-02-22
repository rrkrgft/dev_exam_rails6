class House < ApplicationRecord
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank

  validates :name, presence: true, length: { maximum: 30 }
  validates :price, presence: true
  validates :address, presence: true, length: { maximum: 255 }
  validates :build, presence: true
  validates :remarks, presence: true, length: { maximum: 255 }
end
