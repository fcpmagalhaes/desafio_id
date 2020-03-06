class TagClient < ApplicationRecord
  belongs_to :tag
  belongs_to :client
end
