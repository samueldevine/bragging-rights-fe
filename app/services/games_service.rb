class GamesService
  class << self
    def conn
      Faraday.new('http://localhost:5000/')
      # Faraday.new('https://fast-inlet-74665.herokuapp.com/')
    end

    def parse_response(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_game
      parse_response('api/v1/questions')
    end

    def get_user_location
      parse_response('api/v1/locations')
    end
  end
end
