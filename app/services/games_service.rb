class GamesService
  class << self
    def conn
      Faraday.new('https://fast-inlet-74665.herokuapp.com/api/v1/')
    end

    def parse_response(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_game
      parse_response('questions')
    end

    def get_user_location
      parse_response('locations')
    end
  end
end
