class Admin::Box < ActiveRecord::Base
  belongs_to :about_me
  has_attached_file :image, :styles => { :medium => "190x190>", :thumb => "100x100>" }, 
  	:url  => "/assets/boxes/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/boxes/:id/:style/:basename.:extension",
    :default_url => "/images/:style/missing.png"
    # Validate filename
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
end
