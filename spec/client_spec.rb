require('spec_helper.rb')

describe(Client) do
  describe(".all") do
    it("starts off empty at first") do
      expect(Client.all()).to(eq([]))
    end
  end






end
