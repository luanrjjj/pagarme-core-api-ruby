# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeCoreApi
  # Request for creating a subcription
  class CreateSubscriptionRequest < BaseModel
    # Customer
    # @return [CreateCustomerRequest]
    attr_accessor :customer

    # Card
    # @return [CreateCardRequest]
    attr_accessor :card

    # Subscription code
    # @return [String]
    attr_accessor :code

    # Payment method
    # @return [String]
    attr_accessor :payment_method

    # Billing type
    # @return [String]
    attr_accessor :billing_type

    # Statement descriptor for credit card subscriptions
    # @return [String]
    attr_accessor :statement_descriptor

    # Subscription description
    # @return [String]
    attr_accessor :description

    # Currency
    # @return [String]
    attr_accessor :currency

    # Interval
    # @return [String]
    attr_accessor :interval

    # Interval count
    # @return [Integer]
    attr_accessor :interval_count

    # Subscription pricing scheme
    # @return [CreatePricingSchemeRequest]
    attr_accessor :pricing_scheme

    # Subscription items
    # @return [List of CreateSubscriptionItemRequest]
    attr_accessor :items

    # Shipping
    # @return [CreateShippingRequest]
    attr_accessor :shipping

    # Discounts
    # @return [List of CreateDiscountRequest]
    attr_accessor :discounts

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # Setup data
    # @return [CreateSetupRequest]
    attr_accessor :setup

    # Plan id
    # @return [String]
    attr_accessor :plan_id

    # Customer id
    # @return [String]
    attr_accessor :customer_id

    # Card id
    # @return [String]
    attr_accessor :card_id

    # Billing day
    # @return [Integer]
    attr_accessor :billing_day

    # Number of installments
    # @return [Integer]
    attr_accessor :installments

    # Subscription start date
    # @return [DateTime]
    attr_accessor :start_at

    # Subscription minimum price
    # @return [Integer]
    attr_accessor :minimum_price

    # Number of cycles
    # @return [Integer]
    attr_accessor :cycles

    # Card token
    # @return [String]
    attr_accessor :card_token

    # Gateway Affiliation code
    # @return [String]
    attr_accessor :gateway_affiliation_id

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Days until boleto expires
    # @return [Integer]
    attr_accessor :boleto_due_days

    # Increments
    # @return [List of CreateIncrementRequest]
    attr_accessor :increments

    # Increments
    # @return [CreatePeriodRequest]
    attr_accessor :period

    # SubMerchant
    # @return [CreateSubMerchantRequest]
    attr_accessor :submerchant

    # Subscription's split
    # @return [CreateSubscriptionSplitRequest]
    attr_accessor :split

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer'] = 'customer'
      @_hash['card'] = 'card'
      @_hash['code'] = 'code'
      @_hash['payment_method'] = 'payment_method'
      @_hash['billing_type'] = 'billing_type'
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['description'] = 'description'
      @_hash['currency'] = 'currency'
      @_hash['interval'] = 'interval'
      @_hash['interval_count'] = 'interval_count'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['items'] = 'items'
      @_hash['shipping'] = 'shipping'
      @_hash['discounts'] = 'discounts'
      @_hash['metadata'] = 'metadata'
      @_hash['setup'] = 'setup'
      @_hash['plan_id'] = 'plan_id'
      @_hash['customer_id'] = 'customer_id'
      @_hash['card_id'] = 'card_id'
      @_hash['billing_day'] = 'billing_day'
      @_hash['installments'] = 'installments'
      @_hash['start_at'] = 'start_at'
      @_hash['minimum_price'] = 'minimum_price'
      @_hash['cycles'] = 'cycles'
      @_hash['card_token'] = 'card_token'
      @_hash['gateway_affiliation_id'] = 'gateway_affiliation_id'
      @_hash['quantity'] = 'quantity'
      @_hash['boleto_due_days'] = 'boleto_due_days'
      @_hash['increments'] = 'increments'
      @_hash['period'] = 'period'
      @_hash['submerchant'] = 'submerchant'
      @_hash['split'] = 'split'
      @_hash
    end

    def initialize(customer = nil,
                   card = nil,
                   code = nil,
                   payment_method = nil,
                   billing_type = nil,
                   statement_descriptor = nil,
                   description = nil,
                   currency = nil,
                   interval = nil,
                   interval_count = nil,
                   pricing_scheme = nil,
                   items = nil,
                   shipping = nil,
                   discounts = nil,
                   metadata = nil,
                   setup = nil,
                   increments = nil,
                   plan_id = nil,
                   customer_id = nil,
                   card_id = nil,
                   billing_day = nil,
                   installments = nil,
                   start_at = nil,
                   minimum_price = nil,
                   cycles = nil,
                   card_token = nil,
                   gateway_affiliation_id = nil,
                   quantity = nil,
                   boleto_due_days = nil,
                   period = nil,
                   submerchant = nil,
                   split = nil)
      @customer = customer
      @card = card
      @code = code
      @payment_method = payment_method
      @billing_type = billing_type
      @statement_descriptor = statement_descriptor
      @description = description
      @currency = currency
      @interval = interval
      @interval_count = interval_count
      @pricing_scheme = pricing_scheme
      @items = items
      @shipping = shipping
      @discounts = discounts
      @metadata = metadata
      @setup = setup
      @plan_id = plan_id
      @customer_id = customer_id
      @card_id = card_id
      @billing_day = billing_day
      @installments = installments
      @start_at = start_at
      @minimum_price = minimum_price
      @cycles = cycles
      @card_token = card_token
      @gateway_affiliation_id = gateway_affiliation_id
      @quantity = quantity
      @boleto_due_days = boleto_due_days
      @increments = increments
      @period = period
      @submerchant = submerchant
      @split = split
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer = CreateCustomerRequest.from_hash(hash['customer']) if
        hash['customer']
      card = CreateCardRequest.from_hash(hash['card']) if hash['card']
      code = hash['code']
      payment_method = hash['payment_method']
      billing_type = hash['billing_type']
      statement_descriptor = hash['statement_descriptor']
      description = hash['description']
      currency = hash['currency']
      interval = hash['interval']
      interval_count = hash['interval_count']
      if hash['pricing_scheme']
        pricing_scheme = CreatePricingSchemeRequest.from_hash(hash['pricing_scheme'])
      end
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (CreateSubscriptionItemRequest.from_hash(structure) if structure)
        end
      end
      shipping = CreateShippingRequest.from_hash(hash['shipping']) if
        hash['shipping']
      # Parameter is an array, so we need to iterate through it
      discounts = nil
      unless hash['discounts'].nil?
        discounts = []
        hash['discounts'].each do |structure|
          discounts << (CreateDiscountRequest.from_hash(structure) if structure)
        end
      end
      metadata = hash['metadata']
      setup = CreateSetupRequest.from_hash(hash['setup']) if hash['setup']
      # Parameter is an array, so we need to iterate through it
      increments = nil
      unless hash['increments'].nil?
        increments = []
        hash['increments'].each do |structure|
          increments << (CreateIncrementRequest.from_hash(structure) if structure)
        end
      end
      plan_id = hash['plan_id']
      customer_id = hash['customer_id']
      card_id = hash['card_id']
      billing_day = hash['billing_day']
      installments = hash['installments']
      start_at = APIHelper.rfc3339(hash['start_at']) if hash['start_at']
      minimum_price = hash['minimum_price']
      cycles = hash['cycles']
      card_token = hash['card_token']
      gateway_affiliation_id = hash['gateway_affiliation_id']
      quantity = hash['quantity']
      boleto_due_days = hash['boleto_due_days']
      period = CreatePeriodRequest.from_hash(hash['period']) if hash['period']
      submerchant = CreateSubMerchantRequest.from_hash(hash['submerchant']) if
        hash['submerchant']
      split = CreateSubscriptionSplitRequest.from_hash(hash['split']) if
        hash['split']

      # Create object from extracted values.
      CreateSubscriptionRequest.new(customer,
                                    card,
                                    code,
                                    payment_method,
                                    billing_type,
                                    statement_descriptor,
                                    description,
                                    currency,
                                    interval,
                                    interval_count,
                                    pricing_scheme,
                                    items,
                                    shipping,
                                    discounts,
                                    metadata,
                                    setup,
                                    increments,
                                    plan_id,
                                    customer_id,
                                    card_id,
                                    billing_day,
                                    installments,
                                    start_at,
                                    minimum_price,
                                    cycles,
                                    card_token,
                                    gateway_affiliation_id,
                                    quantity,
                                    boleto_due_days,
                                    period,
                                    submerchant,
                                    split)
    end
  end
end
