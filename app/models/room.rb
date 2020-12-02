class Room < ApplicationRecord
    has_many :room_users
    has_many :users
    has_many :messages
  
  
    validates :name,presence:true
    validates :when,presence:true
    validates :where,presence:true
    validates :who,presence:true
    validates :why,presence:true
    validates :how,presence:true
  end
