require('spec_helper')


describe(Stylist) do
  describe("#==") do
    it("is the same stylist if it has the same stylist_name") do
      stylist1 = Stylist.new({:stylist_name => "Skip Dundy", :id => nil})
      stylist2 = Stylist.new({:stylist_name => "Skip Dundy", :id => nil})
      expect(stylist1).to(eq(stylist2))
    end
  end

  describe(".all") do
    it("is empty at first") do
    expect(Stylist.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a stylist to the array of saved stylists") do
      stylist1 = Stylist.new(:stylist_name => "Skip Dundy", :id => nil)
      stylist1.save()
      expect(Stylist.all()).to(eq([stylist1]))
    end
  end    


end
