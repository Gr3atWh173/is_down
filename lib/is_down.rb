require "is_down/version"
require "net/http"
require "json"

# check if a website is up or not using isitup.org API
module IsDown
  ISITUP = "https://isitup.org/"

  # check if a website is down
  # takes a domain name as the only argument
  def self.is_down?(host)
    !is_up?(host)  
  end

  # opposite of is_down?
  # checks if a website is up
  # takes a domain name as the only argument
  def self.is_up?(host)
    resp = Net::HTTP.get_response(URI(ISUPME + host + ".json"))
    JSON.parse(resp.body)['status_code'] == 1
  end
end
