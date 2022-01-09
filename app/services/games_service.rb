class GamesService
  class << self
    def conn
      Faraday.new('https://fast-inlet-74665.herokuapp.com/')
    end

    def parse_response(url)
      params = { ip_address: request.remote_ip }
      response = conn.get(url, params)
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_game
      # not sure yet if we're getting a whole game (array of questions), or a single question at a time. this method will need to be modified accordingly.

      # url? talk to BE team
      # url = 'api/v1/game'
      # params = ''
      parse_response(url)
    end
  end
end
