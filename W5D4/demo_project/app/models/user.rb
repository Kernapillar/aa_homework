

class User < ApplicationRecord
validates :username, :email, presence: true, uniqueness: true

has_many :borks, 
    primary_key: :id, 
    foreign_key: :borker_id,
    class_name: :Bork

end