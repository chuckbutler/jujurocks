class Tag
  include Mongoid::Document
  include Mongoid::Timestamps::Short

  field :name, type: String

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

end
