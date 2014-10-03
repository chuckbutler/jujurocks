class Dj
  include Mongoid::Document
  field :name_first, type: String
  field :name_last, type: String
  field :email, type: String
  field :timezone, type: String
  field :requested_slot, type: String
  field :live, type: Mongoid::Boolean
  field :skype_handle, type: String
  field :google_handle, type: String
  field :irc_handle, type: String
  field :genres, type: String
  field :frequency, type: String
  field :cc_license_accepted, type: Mongoid::Boolean
end
