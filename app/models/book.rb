class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  has_one :format

  validates :format_id, presence: true

end
