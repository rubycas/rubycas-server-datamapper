class Ticket
  include DataMapper::Resource

  property :id,              Serial
  property :ticket,          String,   :required => true
  property :service,         Text,     :required => true
  property :consumed,        DateTime, :required => false
  property :client_hostname, String,   :required => true
  property :username,        String,   :required => true
  property :type,            String,   :required => true
  timestamps :at

end
