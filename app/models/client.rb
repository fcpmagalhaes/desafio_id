class Client < ApplicationRecord
  belongs_to :user
  validates :name, :email, presence: true
end
