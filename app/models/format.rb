class Format < ApplicationRecord
  has_many :books
  validates :name, acceptance: {accept: ["hardcover", "softcover", "digital"]}
  validates :name, uniqueness: true
end
