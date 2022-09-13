class Order < ApplicationRecord
  belongs_to :company
  belongs_to :people
end
