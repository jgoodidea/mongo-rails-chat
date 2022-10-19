class User
    include Mongoid::Document
    include Mongoid::Timestamps

    field :username, type: String
    
    validates :username, presence: true, uniqueness: true
    scope :all_except, ->(user) { where.not(id: user) }
end
