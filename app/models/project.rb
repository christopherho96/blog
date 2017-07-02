class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  has_attached_file :image, styles: {large: "600x600", medium: "300x300>", thumb: "150x150>" },  validate_media_type: false
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
