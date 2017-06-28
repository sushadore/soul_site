class Singer < ActiveRecord::Base
  has_many :albums
  validates :name, presence: true, uniqueness: { case_sensitive: false}

  scope :alphabetize, -> { order(:name) }

end
