class TicketGrantingTicket
  include DataMapper::Resource

  property :id, Serial
  property :ticket, String, :required => true
  property :client_hostname, String, :required => true
  property :username, String, :required => true
  property :extra_attributes, Json, :required => false
  timestamps :at

  has n, :service_tickets
end
