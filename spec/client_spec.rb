require('spec_helper.rb')

describe(Client) do
  describe("#==") do
    it("is the same client if it has the same client name") do
      client1 = Client.new({:client_name => "Fred Thompson", :stylist_id => nil})
      client2 = Client.new({:client_name => "Fred Thompson", :stylist_id => nil})
      expect(client1).to(eq(client2))
    end
  end

  describe(".all") do
    it("starts off empty at first") do
      expect(Client.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a client to the array of saved clients") do
      client1 = Client.new({:client_name => "Fred Thompson", :stylist_id => 1})
      client1.save()
      expect(Client.all()).to(eq([client1]))
    end
  end

  describe("#client_name") do
    it("lets you read the client name") do
      client1 = Client.new({:client_name => "Fred Thompson", :stylist_id => 1})
      expect(client1.client_name()).to(eq("Fred Thompson"))
    end
  end

  describe("#stylist_id") do
    it("lets you read the stylist_id") do
      client1 = Client.new({:client_name => "Fred Thompson", :stylist_id => 1})
      expect(client1.stylist_id()).to(eq(1))
    end
  end

end
