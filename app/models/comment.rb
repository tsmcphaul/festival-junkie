class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :festival

    validates_presence_of :content
end
