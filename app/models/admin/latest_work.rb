class Admin::LatestWork < ActiveRecord::Base
	has_many :latest_work_boxes
	accepts_nested_attributes_for :latest_work_boxes, :allow_destroy => true
	has_attached_file :image1, :styles => { :medium => "190x190>", :thumb => "100x100>" }, 
  	:url  => "/assets/latest_work/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/latest_work/:id/:style/:basename.:extension",
    :default_url => "/images/:style/missing.png"
	has_attached_file :image2, :styles => { :medium => "190x190>", :thumb => "100x100>" }, 
  	:url  => "/assets/latest_work/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/latest_work/:id/:style/:basename.:extension",
    :default_url => "/images/:style/missing.png"
	has_attached_file :image3, :styles => { :medium => "190x190>", :thumb => "100x100>" }, 
  	:url  => "/assets/latest_work/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/latest_work/:id/:style/:basename.:extension",
    :default_url => "/images/:style/missing.png"
    # Validate filename
  validates_attachment_file_name :image1, :matches => [/png\Z/, /jpe?g\Z/]
  validates_attachment_file_name :image2, :matches => [/png\Z/, /jpe?g\Z/]
  validates_attachment_file_name :image3, :matches => [/png\Z/, /jpe?g\Z/]
end
