require_relative 'response'

module PayU
  module Orders
    class Service
      ENDPOINT = "/api/v2_1/orders"

      def initialize(http_client)
        @http_client = http_client
      end

      def place_order(request)
        Orders::Response.new(
          @http_client.post(ENDPOINT, request)
        )
      end
    end
  end
end

