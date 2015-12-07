module Blockr
  class API

    attr_reader :network,
                :api_version

    def initialize(network:'btc', api_version:'v1')
      @network = network
      @api_version = api_version
      @connection = Connection.new(url)
    end

    def url
      "http://#{network}.blockr.io/api/#{api_version}"
    end

    def network=(network)
      @network = network
      @connection = Connection.new(url)
    end

    def block(hash)
      @connection.get("/block/info/#{hash}")
    end

    def latest_block
      @connection.get("/block/info/last")
    end

    def transaction(hash)
      @connection.get("/tx/info/#{hash}")
    end

    def decode_transaction(hex)
      @connection.post('/tx/decode', hex: hex)
    end

    def push_transaction(hex)
      @connection.post('/tx/push', hex: hex)
    end

    def address(address)
      @connection.get("/address/info/#{address}")
    end

    def address_balance(address)
      @connection.get("/address/balance/#{address}")
    end

    def address_unspent_transactions(address, params=nil)
      @connection.get("/address/unspent/#{address}#{'?' + params.to_param if params}")
    end

    def address_unconfirmed
      @connection.get("/address/unconfirmed/#{address}")
    end

  end
end

class Hash
  def to_param
    collect {|k, v| "#{k}=#{v}"} * '&'
  end
end
