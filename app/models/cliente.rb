class Cliente < ApplicationRecord
    has_many :tag_clientes
    has_many :tags, through: :tag_clientes
    validates :nome, :email, presence: true
end
