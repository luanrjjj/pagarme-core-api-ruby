# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # The settings for creating a debit card payment
  class CreateDebitCardPaymentRequest < BaseModel
    # The text that will be shown on the debit card's statement
    # @return [String]
    attr_accessor :statement_descriptor

    # Debit card data
    # @return [CreateCardRequest]
    attr_accessor :card

    # The debit card id
    # @return [String]
    attr_accessor :card_id

    # The debit card token
    # @return [String]
    attr_accessor :card_token

    # Indicates a recurrence
    # @return [Boolean]
    attr_accessor :recurrence

    # The payment authentication request
    # @return [CreatePaymentAuthenticationRequest]
    attr_accessor :authentication

    # The Debit card payment token request
    # @return [CreateCardPaymentContactlessRequest]
    attr_accessor :token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['card'] = 'card'
      @_hash['card_id'] = 'card_id'
      @_hash['card_token'] = 'card_token'
      @_hash['recurrence'] = 'recurrence'
      @_hash['authentication'] = 'authentication'
      @_hash['token'] = 'token'
      @_hash
    end

    def initialize(statement_descriptor = nil,
                   card = nil,
                   card_id = nil,
                   card_token = nil,
                   recurrence = nil,
                   authentication = nil,
                   token = nil)
      @statement_descriptor = statement_descriptor
      @card = card
      @card_id = card_id
      @card_token = card_token
      @recurrence = recurrence
      @authentication = authentication
      @token = token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      statement_descriptor = hash['statement_descriptor']
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      card_id = hash['card_id']
      card_token = hash['card_token']
      recurrence = hash['recurrence']
      if hash['authentication']
        authentication = CreatePaymentAuthenticationRequest.from_hash(hash['authentication'])
      end
      token = CreateCardPaymentContactlessRequest.from_hash(hash['token']) if
        hash['token']

      # Create object from extracted values.
      CreateDebitCardPaymentRequest.new(statement_descriptor,
                                        card,
                                        card_id,
                                        card_token,
                                        recurrence,
                                        authentication,
                                        token)
    end
  end
end
