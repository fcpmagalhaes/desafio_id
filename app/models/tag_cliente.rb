class TagCliente < ApplicationRecord
  belongs_to :tag
  belongs_to :cliente
end
