class Stylist
  attr_reader(:stylist_name, :id)

  define_method(:initialize) do |attributes|
    @stylist_name = attributes.fetch(:stylist_name)
    @id = attributes.fetch(:id)
  end

  define_singleton_method(:all) do
    returned_stylists = DB.exec("SELECT * FROM stylists;")
    stylists = []
    returned_stylists.each() do |stylist|
      stylist_name = stylists.fetch("stylist_name")
      id = stylists.fetch("id").to_i
      stylists.push(Stylist.new({:stylist_name => stylist_name, :id => id}))
    end
    stylists
  end




  define_method(:==) do |another_stylist|
    self.stylist_name().==(another_stylist.stylist_name())
  end

end
