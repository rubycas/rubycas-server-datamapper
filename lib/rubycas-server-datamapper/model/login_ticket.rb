class LoginTicket
  include DataMapper::Resource

  property :id,              Serial
  property :ticket,          String,   :required => true
  property :consumed,        DateTime, :required => false
  property :client_hostname, String,   :required => true
  timestamps :at

end
