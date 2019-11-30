class Trail < ApplicationRecord
    has_many_attached :images
    validate :Name, presence: true
    validate :Location, presence: true
    
    
def thumbnail input
    return self.images[input].variant(resize: '300x300!').processed
end
end
