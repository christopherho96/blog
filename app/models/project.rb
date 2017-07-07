class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  has_attached_file :image, styles: {large: "600x600", medium: "300x300", thumb: "150x150", icon: "300x235" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
