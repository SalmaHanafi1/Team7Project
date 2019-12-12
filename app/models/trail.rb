class Trail < ApplicationRecord
    has_many_attached :images
    has_many :reviews, :dependent => :destroy
    
    validates :Name, presence: true, length: { minimum: 5}
    validates :Location, presence: true, length: { minimum: 15}
    validates :Description, presence: true, length: { minimum: 20}
    validate :image_type
    
    
    def thumbnail input
    return self.images[input].variant(resize: '300x300!').processed
    end

    private 
    def image_type
        if images.attached? == false
            errors.add(:images, "are missing!")
        end
        images.each do |image|
            if !image.content_type.in?(%('image/jpeg image/png image/jpg'))
               errors.add(:images, 'needs to be a JPEG or PNG') 
            end
        end
    end
end
