class User
  include Mongoid::Document
  include Mongoid::Paperclip
  
  field :name, type: String


  has_mongoid_attached_file :avatar
  validates_attachment :avatar, presence: true,
  content_type: { content_type: "image/jpeg" },
  size: { in: 0..10000.kilobytes }

end
