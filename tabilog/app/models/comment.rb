class Comment < ActiveRecord::Base
  belongs_to :matelpage
  belongs_to :user
end
