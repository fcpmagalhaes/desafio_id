class Tag < ApplicationRecord
    validates :label, :color, presence: true
end
