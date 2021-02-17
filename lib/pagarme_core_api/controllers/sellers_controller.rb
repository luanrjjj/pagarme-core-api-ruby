# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # SellersController
  class SellersController < BaseController
    @instance = SellersController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # TODO: type endpoint description here
    # @param [String] id Required parameter: Seller Id
    # @return GetSellerResponse response from the API call
    def get_seller_by_id(id)
      # Prepare query url.
      _path_url = '/sellers/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'id' => id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetSellerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] seller_id Required parameter: Seller Id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetSellerResponse response from the API call
    def delete_seller(seller_id,
                      idempotency_key = nil)
      # Prepare query url.
      _path_url = '/sellers/{sellerId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'sellerId' => seller_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetSellerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [CreateSellerRequest] request Required parameter: Seller Model
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetSellerResponse response from the API call
    def create_seller(request,
                      idempotency_key = nil)
      # Prepare query url.
      _path_url = '/sellers/'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetSellerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] name Optional parameter: Example:
    # @param [String] document Optional parameter: Example:
    # @param [String] code Optional parameter: Example:
    # @param [String] status Optional parameter: Example:
    # @param [String] type Optional parameter: Example:
    # @param [DateTime] created_since Optional parameter: Example:
    # @param [DateTime] created_until Optional parameter: Example:
    # @return ListSellerResponse response from the API call
    def get_sellers(page = nil,
                    size = nil,
                    name = nil,
                    document = nil,
                    code = nil,
                    status = nil,
                    type = nil,
                    created_since = nil,
                    created_until = nil)
      # Prepare query url.
      _path_url = '/sellers'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page' => page,
          'size' => size,
          'name' => name,
          'document' => document,
          'code' => code,
          'status' => status,
          'type' => type,
          'created_Since' => created_since,
          'created_Until' => created_until
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ListSellerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] id Required parameter: Example:
    # @param [UpdateSellerRequest] request Required parameter: Update Seller
    # model
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetSellerResponse response from the API call
    def update_seller(id,
                      request,
                      idempotency_key = nil)
      # Prepare query url.
      _path_url = '/sellers/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'id' => id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetSellerResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] seller_id Required parameter: Seller Id
    # @param [UpdateMetadataRequest] request Required parameter: Request for
    # updating the charge metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetSellerResponse response from the API call
    def update_seller_metadata(seller_id,
                               request,
                               idempotency_key = nil)
      # Prepare query url.
      _path_url = '/sellers/{seller_id}/metadata'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'seller_id' => seller_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetSellerResponse.from_hash(decoded)
    end
  end
end