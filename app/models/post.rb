class Post < ActiveRecord::Base
	validates :name, presence: true,
                    length: { minimum: 5 }
    mount_uploader :avatar, AvatarUploader
    mount_uploader :menu, MenuUploader

    belongs_to :owner
end
