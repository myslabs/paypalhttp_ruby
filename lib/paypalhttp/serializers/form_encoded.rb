require 'uri'

module PayPalHttp
  class FormEncoded
    def encode(request)
      URI.encode_www_form(request.body)
    end

    def decode(body)
      URI.decode_www_form(body)
    end

    def content_type
      /^application\/x-www-form-urlencoded/
    end
  end
end
