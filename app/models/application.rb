class Application < ApplicationRecord
  belongs_to :worker
  belongs_to :position
end
