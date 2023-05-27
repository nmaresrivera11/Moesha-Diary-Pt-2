class Blog < ApplicationRecord
  validates :title, :content, presence: true,
  uniqueness: {scope: :title},
  length: {scope: :title, minimum: 4}
end
