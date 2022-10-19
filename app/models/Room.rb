class Room
    include Mongoid::Document
    include Mongoid::Timestamps

    field :name, type: String
    field :is_private, type: Boolean
    
    validates :name, presence: true, uniqueness: true
    validates :is_private, inclusion: { in: [true, false] }
    scope :public_rooms, -> { where(is_private: false) }
end
