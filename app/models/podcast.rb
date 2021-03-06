class Podcast
  include Mongoid::Document
  include Mongoid::Timestamps::Short

  field :title, type: String
  field :frequency, type: String
  field :artist, type: String
  field :url, type: String
  field :description, type: String

  has_many :episodes
  has_and_belongs_to_many :tags, inverse_of: nil

  validates :title, presence: true, uniqueness: true
  validates :url, presence: true
  validates :description, presence: true
  validates :url, :format => URI::regexp(%w(http https))

end
