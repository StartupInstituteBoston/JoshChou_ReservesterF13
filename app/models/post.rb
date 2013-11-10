class Post < ActiveRecord::Base
	validates :name, presence: true,
                    length: { minimum: 5 }
    mount_uploader :avatar, AvatarUploader
end
