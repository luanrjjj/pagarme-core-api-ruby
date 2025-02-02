# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeCoreApi
  # Response object for getting a access token
  class GetAccessTokenResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [GetCustomerResponse]
    attr_accessor :customer

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['code'] = 'code'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['customer'] = 'customer'
      @_hash
    end

    def initialize(id = nil,
                   code = nil,
                   status = nil,
                   created_at = nil,
                   customer = nil)
      @id = id
      @code = code
      @status = status
      @created_at = created_at
      @customer = customer
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      code = hash['code']
      status = hash['status']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      customer = GetCustomerResponse.from_hash(hash['customer']) if
        hash['customer']

      # Create object from extracted values.
      GetAccessTokenResponse.new(id,
                                 code,
                                 status,
                                 created_at,
                                 customer)
    end
  end
end
