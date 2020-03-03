module SmartId
  class Exception < ::Exception; end
  class InvalidAuthTypeError < Exception; end
  class InvalidParamsError < Exception; end
  class ConnectionError < Exception; end
  
  class IncorrectAccountLevelError < Exception
    def message
      "User exists, but has lower level account than required by request"
    end
  end
end