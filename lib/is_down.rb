require "is_down/version"
require "net/http"

# check if a website is up or not using downforeveryoneorjustme.com
module IsDown
  ISUPME = "http://downforeveryoneorjustme.com"

  # check if a website is down
  # takes a domain name as the only argument
  def self.is_down?(host)
    !is_up?(host)  
  end

  # opposite of is_down?
  # checks if a website is up
  # takes a domain name as the only argument
  def self.is_up?(host)
    Net::HTTP.get_response(URI(ISUPME + "/" + host)).body.include?("is up")
  end
end
