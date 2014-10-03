json.array!(@djs) do |dj|
  json.extract! dj, :id, :name_first, :name_last, :email, :timezone, :requested_slot, :live, :skype_handle, :google_handle, :irc_handle, :genres, :frequency, :cc_license_accepted
  json.url dj_url(dj, format: :json)
end
