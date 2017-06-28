class Album < ActiveRecord::Base
  belongs_to :singer

  validates :title, presence: true, uniqueness: true
  validates :year, presence: true
  validates :singer_id, presence: true
end
