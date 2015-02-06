require 'spec_helper'


describe Stylist do
	describe '#==' do
    it 'is the same stylist if it has the same stylist_name' do
      stylist1 = Stylist.new({ stylist_name: "Skip Dundy", id: nil })
      stylist2 = Stylist.new({ stylist_name: "Skip Dundy", id: nil })
      expect(stylist1.to eq(stylist2))
    end
  end

  describe '.all' do
    it 'is empty at first' do
    expect(Stylist.all()).to eq([])
    end
  end

  describe '#save' do
    it 'adds a stylist to the array of saved stylists' do
			stylist1 = Stylist.new({ stylist_name: "Skip Dundy", id: nil })
      stylist1.save
      expect(Stylist.all()).to eq([stylist1])
    end
  end

  describe '#id' do
    it 'lets you read the id for a stylist' do
			stylist1 = Stylist.new({ stylist_name: "Skip Dundy", id: 1 })
      expect(stylist1.id()).to eq(1)
    end
  end

  describe '#stylist' do
    it 'lets you read the id for a stylist' do
			stylist1 = Stylist.new({ stylist_name: "Skip Dundy", id: 13 })
      expect(stylist1.id()).to eq(13)
    end
  end

  describe '.find' do
    it 'returns a stylist by its ID number' do
      stylist1 = Stylist.new({ stylist_name: "Skip Dundy", id: nil })
      stylist1.save
      stylist2 = Stylist.new({ stylist_name: "George C. Tilyou", id: nil })
      stylist2.save
      expect(Stylist.find(stylist2.id())).to eq(stylist2)
    end
  end

  describe '#clients' do
    it 'returns an array of clients for that stylist' do
      stylist1 = Stylist.new({ stylist_name: "Skip Dundy", id: nil })
      stylist1.save
      client1 = Client.new({ client_name: "George C. Tilyou", stylist_id: stylist1.id() })
      client1.save()
      client2 = Client.new({ client_name: "Fred Thompson", stylist_id: stylist1.id() })
      client2.save
      expect(stylist1.clients()).to eq([client1, client2])
    end
  end

end
