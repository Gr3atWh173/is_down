#require "is_down/version"
require "net/http"

module IsDown
  ISUPME = "http://downforeveryoneorjustme.com"

  def self.is_down?(host)
    !is_up?(host)  
  end

  def self.is_up?(host)
    Net::HTTP.get_response(URI(ISUPME + "/" + host)).body.include?("is up")
  end
end
