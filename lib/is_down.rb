require "is_down/version"

module IsDown
  ISUPME = "http://downforeveryoneorjustme.com"

  def is_down?(host)
    !is_up?(host)  
  end

  def is_up?(host)
    Net::HTTP.get_repsonse(URI(ISUPME + "/" + host)).body.include?("is up")
  end
end
