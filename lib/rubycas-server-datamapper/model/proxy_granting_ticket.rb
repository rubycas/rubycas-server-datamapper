class ProxyGrantingTicket
  include DataMapper::Resource

  property :id, Serial
  property :ticket, String, :required => true
  property :client_hostname, String, :required => true
  property :iou, String, :required => true
  timestamps :at

  belongs_to :service_ticket
  has n, :proxy_tickets
end
