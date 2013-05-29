module SimpleServiceProvider
  class SimpleServiceProviderError < StandardError
  end

  class RecordInvalid < SimpleServiceProviderError
    def initialize(consultant)
      @consultant = consultant
      error_msg = @consultant.errors.full_messages.join(",")
      super(error_msg)
    end
  end
end
