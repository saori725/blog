class Micropost < ActiveRecord::Base
    has_many :iine_users, through: :likes, source: :user

	def iine(user)
      likes.create(user_id: user.id)
    end

    def uniine(user)
      likes.find_by(user_id: user.id).destroy
    end

    def iine?(user)
      iine_users.include?(user)
    end
end

