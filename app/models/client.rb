class Client < ApplicationRecord
  belongs_to :user
  has_many :tag_clients
  has_many :tags, through: :tag_clients
  validates :name, :email, presence: true
end
