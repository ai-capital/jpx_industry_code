# frozen_string_literal: true

class JpxIndustryCode
  class Errors
    class JpxIndustryCodeError < StandardError; end
    class InvalidArgumentError < JpxIndustryCodeError; end
    class NotFoundError < JpxIndustryCodeError; end
  end
end
