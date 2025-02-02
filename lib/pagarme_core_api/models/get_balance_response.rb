# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # Balance
  class GetBalanceResponse < BaseModel
    # Currency
    # @return [String]
    attr_accessor :currency

    # Amount available for transferring
    # @return [Long]
    attr_accessor :available_amount

    # Recipient
    # @return [GetRecipientResponse]
    attr_accessor :recipient

    # Recipient
    # @return [Long]
    attr_accessor :transferred_amount

    # Recipient
    # @return [Long]
    attr_accessor :waiting_funds_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['currency'] = 'currency'
      @_hash['available_amount'] = 'available_amount'
      @_hash['recipient'] = 'recipient'
      @_hash['transferred_amount'] = 'transferred_amount'
      @_hash['waiting_funds_amount'] = 'waiting_funds_amount'
      @_hash
    end

    def initialize(currency = nil,
                   available_amount = nil,
                   transferred_amount = nil,
                   waiting_funds_amount = nil,
                   recipient = nil)
      @currency = currency
      @available_amount = available_amount
      @recipient = recipient
      @transferred_amount = transferred_amount
      @waiting_funds_amount = waiting_funds_amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      currency = hash['currency']
      available_amount = hash['available_amount']
      transferred_amount = hash['transferred_amount']
      waiting_funds_amount = hash['waiting_funds_amount']
      recipient = GetRecipientResponse.from_hash(hash['recipient']) if
        hash['recipient']

      # Create object from extracted values.
      GetBalanceResponse.new(currency,
                             available_amount,
                             transferred_amount,
                             waiting_funds_amount,
                             recipient)
    end
  end
end
