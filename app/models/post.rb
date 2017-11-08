class Post < ApplicationRecord
  belongs_to :user

  has_attachments :photos, maximum: 3

  validates :content , presence: true
end
