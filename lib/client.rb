class Client
  attr_reader(:client_name)
  #:stylist_id)

  define_method(:initialize) do |attributes|
    @client_name = attributes.fetch(:client_name)
    # @stylist_id = attributes.fetch(:stylist_id)
  end

  define_method(:==) do |another_client|
    self.client_name().==(another_client.client_name())
  end


end
