class Client
  attr_reader(:client_name, :stylist_id)

  def initialize(attributes)
    @client_name = attributes[:client_name]
    @stylist_id = attributes[:stylist_id]
  end

  define_method(:==) do |another_client|
    self.client_name().==(another_client.client_name()).&(self.stylist_id().==(another_client.stylist_id()))
  end

	def self.all
    returned_clients = DB.exec("SELECT * FROM clients;")
    clients = []
    returned_clients.each do |client|
      client_name = client['client_name']
      stylist_id = client['stylist_id'].to_i
      clients.push(Client.new({ client_name: client_name, stylist_id: stylist_id }))
    end
    clients
  end

  def save
    DB.exec("INSERT INTO clients (client_name, stylist_id) VALUES ('#{@client_name}', #{@stylist_id})")
  end

end
