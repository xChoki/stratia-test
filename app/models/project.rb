class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

  has_many :tasks, dependent: :destroy

  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
end
