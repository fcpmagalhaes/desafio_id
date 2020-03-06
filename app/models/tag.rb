class Tag < ApplicationRecord
    has_many :tag_clients
    has_many :clients, through: :tag_clients
    validates :label, :color, presence: true
end
