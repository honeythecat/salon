class Stylist
  attr_reader(:stylist_name, :id)

  def initialize(attributes)
    @stylist_name = attributes[:stylist_name]
    @id = attributes[:id]
  end

	def self.all
    returned_stylists = DB.exec("SELECT * FROM stylists;")
    stylists = []
    returned_stylists.each do |stylist|
      stylist_name = stylist['stylist_name']
      id = stylist['id'].to_i
      stylists.push(Stylist.new({ stylist_name: stylist_name, id: id }))
    end
    stylists
  end

	#clean up this method's language once you get everything working
  def save
    result = DB.exec("INSERT INTO stylists (stylist_name) VALUES ('#{@stylist_name}') RETURNING id;")
		@id = result.first().fetch('id').to_i()
  end


	#clean up this method's language once you get everything working	
	define_method(:==) do |another_stylist|
    self.stylist_name().==(another_stylist.stylist_name()).&(self.id().==(another_stylist.id()))
  end

	def self.find(id)
    found_stylists = nil
    Stylist.all().each() do |stylist|
      if stylist.id == id
        found_stylists = stylist
      end
    end
    found_stylists
  end

  def clients 
    found_clients = []
    clients = DB.exec("SELECT * FROM clients WHERE stylist_id = #{self.id()};")
    clients.each do |client|
      client_name = client['client_name']
      stylist_id = client['stylist_id'].to_i
      found_clients.push(Client.new({ client_name: client_name, stylist_id: stylist_id }))
    end
    found_clients
  end

end
