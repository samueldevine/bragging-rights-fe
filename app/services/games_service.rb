class GamesService
  class << self
    def conn
      Faraday.new('https://fast-inlet-74665.herokuapp.com/')
    end

    def parse_response(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_game
      # returns an array of questions
      url = 'api/v1/questions'
      parse_response(url)
    end
  end
end
