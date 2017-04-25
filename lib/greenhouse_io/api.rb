module GreenhouseIo
  module API
    def get_response(url, options)
      self.class.get(url, options)
    end

    def post_response(url, options)
      self.class.post(url, options)
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: GreenhouseIo.configuration.symbolize_keys)
    end

    def api_auth_header
      { "Authorization" => "Bearer #{self.api_token}" }
    end
  end
end
