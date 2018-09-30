class Matelpage < ActiveRecord::Base
	 # association
  belongs_to :user
  has_many :comments
  # validation
  validates_presence_of :country, :city, :image, :text, :user_id
end
