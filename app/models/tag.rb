class Tag < ApplicationRecord
    has_many :tag_clientes
    has_many :clientes, through: :tag_clientes
    validates :label, :color, presence: true
end
