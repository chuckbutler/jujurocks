class Dj
  include Mongoid::Document
  include Mongoid::Timestamps::Short

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
  field :broadcast_license, type: Mongoid::Boolean

  # Required Fields
  validates :name_first, :name_last, presence: true, length: { minimum: 2 }
  validates :email,  :frequency, :requested_slot,  presence: true
  validates :timezone, presence: true

  # Validation of select field values
  validates :requested_slot, inclusion: { in: %w(mor after even late onight),
  message: "%{value} is not a valid timeslot"}
  validates :genres, inclusion: { in: %w(talk avantgarde latin comedy country easylistening electronic folk hiphop jazz pop rnb blues rock ska other),
  message: "%{value} is not a valid genre"}


  # Additional validation
  validates :name_first, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :name_last, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :email, uniqueness: true
  validates :email, email: true
  validates :broadcast_license, inclusion: { in: [true], message: "You must accept the broadcaster terms" }



end
