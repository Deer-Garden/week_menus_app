class MainMenu < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name 
    validates :expiration
    validates :kcal
    validates :image
    
  end
end
