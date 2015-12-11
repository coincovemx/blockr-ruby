# Blockr

Ruby SDK for Blockr.io

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blockr-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blockr-ruby

## Usage

### Initialize the library
  
  ```ruby
    blockr_api = Blockr::API.new(network:BLOCK_CHAIN, api_version:API_VERSION)
  ```

Where `BLOCK_CHAIN` can be one of btc, tbtc, ltc, dgc, qrk, ppc, mec or any of the blockchains supported by in https://blockr.io
And `API_VERSION` is v1 for now (optional)

You can also change the Blockchain using:
  ```ruby
    blockr_api.network = 'tbtc'
  ```

### Posible Methods

You can use any of these methods with the initialized object or simply by calling:

  ```ruby
    Blockr.block(hash)
    Blockr.latest_block
    Blockr.latest_block_raw
    Blockr.transaction(hash)
    Blockr.raw_transaction(hash)
    Blockr.decode_transaction(hex)
    Blockr.push_transaction(hex)
    Blockr.address(address)
    Blockr.address_balance(address)
    Blockr.address_unspent_transactions(address, params)
    Blockr.address_unconfirmed
  ```

## Contributing

To bump the version you can use the `./bump` python script, just write it in the terminal to see the options.

1. Fork it ( https://github.com/[my-github-username]/blockr-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
