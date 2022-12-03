class Post < ApplicationRecord
  validates :body, :title, presence: true

  belongs_to :user
end
