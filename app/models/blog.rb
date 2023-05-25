class Blog < ApplicationRecord
  validates :title, :content,
  presence: true,
  uniqueness: {scope: :title}
end
