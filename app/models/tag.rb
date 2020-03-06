class Tag < ApplicationRecord
    validates :titulo, presence: true
    validates :cor, presence: true
end
