class Tozitsu < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
