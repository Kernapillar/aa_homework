class Bork < ApplicationRecord
    validates :borker_id, :bork_body, presence: true
    validates :bork_body_too_long
    
    def bork_body_too_long
        if bork_body && bork_body.length > 140
            errors[:bork_body] << 'bork too Long'
        end
    end

    belongs_to :user, 
        primary_key: :id, 
        foreign_key: :borker_id, 
        classname: :User

end