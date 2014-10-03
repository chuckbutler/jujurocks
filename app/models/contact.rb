class Contact
  include Mongoid::Document
  include Mongoid::Timestamps::Short

  field :name, type: String
  field :email, type: String
  field :message, type: String
end
