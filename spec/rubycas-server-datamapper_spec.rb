require 'spec_helper'

describe RubyCAS::Server::Core::DataMapper do

  before(:all) do
   DataMapper.setup(:default, "sqlite::memory:")
   DataMapper.auto_migrate!(:default)
  end

  describe "Load schema" do

    it 'Validate number of models' do
     DataMapper::Model.descendants.count.should be(6)
    end

    it 'Validate Ticket Model' do
      ticket = {:id => Integer, :ticket => String, :service => String,
                :consumed => DateTime, :client_hostname => String, :type => String,
                :username => String, :created_at => DateTime, :updated_at => DateTime}
      Hash[Ticket.properties.map {|p| [p.name, p.primitive]}].should eq(ticket)
    end

    it 'Validate ServiceTicket Model' do
      service_ticket = {:id => Integer, :ticket => String, :service => String,
                :consumed => DateTime, :client_hostname => String, :type => String,
                :username => String, :created_at => DateTime, :updated_at => DateTime,
                :ticket_granting_ticket_id => Integer}
      Hash[ServiceTicket.properties.map {|p| [p.name, p.primitive]}].should eq(service_ticket)
    end

    it 'Validate ProxyTicket Model' do
      service_ticket = {:id => Integer, :ticket => String, :service => String,
                :consumed => DateTime, :client_hostname => String, :type => String,
                :username => String, :created_at => DateTime, :updated_at => DateTime,
                :proxy_granting_ticket_id => Integer}
      Hash[ProxyTicket.properties.map {|p| [p.name, p.primitive]}].should eq(service_ticket)
    end

    it 'Validate LoginTicket Model' do
      login_ticket = {:id => Integer, :ticket => String,
                        :consumed => DateTime, :client_hostname => String,
                        :created_at => DateTime, :updated_at => DateTime }
      Hash[LoginTicket.properties.map {|p| [p.name, p.primitive]}].should eq(login_ticket)
    end

    it 'Validate ProxyGrantingTicket Model' do
      pgt  = {:id => Integer, :ticket => String, :client_hostname => String,
              :iou => String, :service_ticket_id => Integer,
              :created_at => DateTime, :updated_at => DateTime }
      Hash[ProxyGrantingTicket.properties.map {|p| [p.name, p.primitive]}].should eq(pgt)
    end

    it 'Validate TicketGrantingTicket Model' do
      tgt  = {:id => Integer, :ticket => String, :client_hostname => String,
              :username => String, :extra_attributes => String,
              :created_at => DateTime, :updated_at => DateTime }
      Hash[TicketGrantingTicket.properties.map {|p| [p.name, p.primitive]}].should eq(tgt)
    end
  end
end
