class Song
  include Mongoid::Document
  include Mongoid::Timestamps::Short

  field :title, type: String
  field :artist, type: String
  field :filepath, type: String
end
