class ServiceTicket < Ticket
  has 1, :proxy_granting_ticket
  belongs_to :ticket_granting_ticket
end
