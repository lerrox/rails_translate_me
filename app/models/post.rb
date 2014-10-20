class Post < ActiveRecord::Base
  self.table_name = "content.posts"

  has_attached_file :image, :styles => { :medium => "370x294>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
