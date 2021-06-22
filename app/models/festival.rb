class Festival < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments

    validates_presence_of :date, :city, :state, :genre, :artist, :venue
    validates_presence_of :title, uniqueness :true

end
