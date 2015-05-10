class Ahoy::Store < Ahoy::Stores::ActiveRecordStore
  # customize here
  Ahoy.cookie_domain = :all
  Ahoy.visit_duration = 30.minutes
  Ahoy.geocode = :async
end
