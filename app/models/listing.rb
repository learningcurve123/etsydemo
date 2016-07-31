class Listing < ActiveRecord::Base
 
has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg",
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end



=begin
This is the paperclip 5.0 tails of code
#content_type: /\Aimage\/.*\Z/   

This is the paperclip 3.0 tails of code
%w(image/jpeg image/jpg image/png)
=end